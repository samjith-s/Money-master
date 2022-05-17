import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/categories/categories_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/domain/categories/model/category_db_model.dart';
import '../../../application/allrounder/allrounder_bloc.dart';
import '../../../application/transactions/transactions_bloc.dart';
import '../../../domain/transactions/model/transaction_db_model.dart';
import '../homeScreen/home_page.dart';
import '../startingScreen/starting_screen_widgets.dart';
import 'widgets/add_radiobuttion_widgets.dart';
import 'widgets/add_page_datepicker_widget.dart';
import 'widgets/addnew_category_button_widget.dart';
import 'widgets/category_dropdown_widget.dart';
import 'widgets/payment_mode_button_widget.dart';

TextEditingController amountContoller = TextEditingController();
TextEditingController remarkContoller = TextEditingController();

class AddTransactionScreen extends StatelessWidget {
  final TransactionModel? model;
  AddTransactionScreen({Key? key, this.model}) : super(key: key);

  final formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    if (model != null) {
      BlocProvider.of<CategoriesBloc>(context).add(
        CategoriesEvent.changeCategoryDdValue(newValue: model!.category),
      );
      BlocProvider.of<CategoriesBloc>(context).add(
        CategoriesEvent.changeDate(newDate: model!.date),
      );
      BlocProvider.of<CategoriesBloc>(context).add(
        CategoriesEvent.changeGroupValue(newValue: model!.type),
      );
      BlocProvider.of<CategoriesBloc>(context).add(
        CategoriesEvent.changePeymentButton(selectedButton: model!.peymentMode),
      );

      remarkContoller.text = model!.remark;
      amountContoller.text = model!.amount;
    }
    return WillPopScope(
      child: Scaffold(
        backgroundColor: const Color(0xFF17191f),
        appBar: AppBar(
          backgroundColor: appBlue,
          leading: BackButton(
            onPressed: () {
              if (model != null) {
                Navigator.of(context).pop();
              }
              BlocProvider.of<AllrounderBloc>(context)
                  .add(const AllrounderEvent.navigate(pageIndex: 0));
            },
          ),
          title: const Text(
            'New Entry',
            style: TextStyle(fontFamily: 'RobotoCondensed'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
              key: formKey2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * .01329),
                  const AddPageDatePicker(),
                  SizedBox(height: height * .02792),
                  StartScreenFormField(
                    textColor: appWhite,
                    hintColor: const Color.fromARGB(255, 108, 108, 108),
                    inputType: TextInputType.number,
                    controller: amountContoller,
                    hint: 'Amount',
                    borderColor: Colors.grey,
                    validator: (value) => value!.isEmpty
                        ? 'Enter a amount'
                        : (RegExp(r'\d').hasMatch(value))
                            ? null
                            : 'Enter a valid amount',
                  ),
                  SizedBox(height: height * .03988),
                  StartScreenFormField(
                    textColor: appWhite,
                    hintColor: const Color.fromARGB(255, 108, 108, 108),
                    controller: remarkContoller,
                    hint: 'Remark (Item, Person Name)',
                    borderColor: Colors.grey,
                    validator: (value) => value!.isEmpty
                        ? 'Enter the remark'
                        : (RegExp(r'[^\d\W]').hasMatch(value))
                            ? null
                            : 'Enter a valid remark',
                  ),
                  const AddPageRadiobuttons(),
                  const AddPageDropDown(
                    hintText: 'Select category',
                  ),
                  SizedBox(height: height * .03988),
                  const AddPageNewCategory(),
                  SizedBox(height: height * .03191),
                  const Text(
                    'Payment Mode',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontFamily: 'AnticSlab',
                    ),
                  ),
                  SizedBox(height: height * .00797),
                  Row(
                    children: [
                      PeymentModeButton(
                        button: 'Cash',
                        child: 'Cash',
                        onPressed: () {
                          BlocProvider.of<CategoriesBloc>(context).add(
                            const CategoriesEvent.changePeymentButton(
                              selectedButton: 'Cash',
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      PeymentModeButton(
                        child: 'Online',
                        button: 'Online',
                        onPressed: () {
                          BlocProvider.of<CategoriesBloc>(context).add(
                            const CategoriesEvent.changePeymentButton(
                              selectedButton: 'Online',
                            ),
                          );
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * .05319,
                  ),
                  BlocBuilder<CategoriesBloc, CategoriesState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        height: height * .07247,
                        child: ElevatedButton(
                          child: Text(
                            model == null ? 'Save' : 'Save Changes',
                            style: const TextStyle(
                                fontFamily: 'Rokkitt-Thin',
                                fontSize: 19,
                                fontWeight: FontWeight.w900),
                          ),
                          onPressed: model == null
                              ? () {
                                  if (!formKey2.currentState!.validate()) {
                                    return;
                                  }
                                  if (amountContoller.text == '' ||
                                      remarkContoller.text == '' ||
                                      state.categoryDropValue == null) {
                                    return;
                                  }
                                  TransactionModel _model = TransactionModel(
                                    id: DateTime.now().microsecond,
                                    type: state.groupValueRadio,
                                    date: state.addScreenDate,
                                    amount: amountContoller.text,
                                    remark: remarkContoller.text,
                                    category: state.categoryDropValue!,
                                    peymentMode: state.selectedPeymentButton,
                                  );
                                
                                  BlocProvider.of<TransactionsBloc>(context)
                                      .add(
                                    TransactionsEvent.addTransaction(
                                      model: _model,
                                    ),
                                  );
                                  BlocProvider.of<AllrounderBloc>(context).add(
                                      const AllrounderEvent.navigate(
                                          pageIndex: 0));
                                  BlocProvider.of<CategoriesBloc>(context).add(
                                    const CategoriesEvent.changeCategoryDdValue(
                                        newValue: null),
                                  );
                                  BlocProvider.of<CategoriesBloc>(context).add(
                                    CategoriesEvent.changeDate(
                                        newDate: DateTime.now()),
                                  );
                                  BlocProvider.of<CategoriesBloc>(context).add(
                                    const CategoriesEvent.changeGroupValue(
                                        newValue: Categorytype.income),
                                  );
                                  amountContoller.clear();
                                  remarkContoller.clear();
                                }
                              : () {
                                  TransactionModel _model = TransactionModel(
                                    id: model!.id,
                                    type: state.groupValueRadio,
                                    date: state.addScreenDate,
                                    amount: amountContoller.text,
                                    remark: remarkContoller.text,
                                    category: state.categoryDropValue!,
                                    peymentMode: state.selectedPeymentButton,
                                  );
                                  BlocProvider.of<TransactionsBloc>(context)
                                      .add(
                                    TransactionsEvent.updateTransaction(
                                      newModel: _model,
                                    ),
                                  );
                                  BlocProvider.of<CategoriesBloc>(context).add(
                                    const CategoriesEvent.changeCategoryDdValue(
                                        newValue: null),
                                  );
                                  BlocProvider.of<CategoriesBloc>(context).add(
                                    CategoriesEvent.changeDate(
                                        newDate: DateTime.now()),
                                  );
                                  BlocProvider.of<CategoriesBloc>(context).add(
                                    const CategoriesEvent.changeGroupValue(
                                        newValue: Categorytype.income),
                                  );
                                  amountContoller.clear();
                                  remarkContoller.clear();
                                  Navigator.of(context).pop();
                                },
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(appBlue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onWillPop: () {
        BlocProvider.of<AllrounderBloc>(context)
            .add(const AllrounderEvent.navigate(pageIndex: 0));
        if (model != null) {
          Navigator.of(context).pop();
        }

        return Future.value(false);
      },
    );
  }
}
