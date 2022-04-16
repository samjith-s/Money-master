import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/screens/addTransaction/add_transaction_widgets.dart';
import 'package:money_manager/screens/startingScreen/starting_screen_widgets.dart';
import 'package:money_manager/transaction_db/transaction_db_functions.dart';
import 'package:money_manager/transaction_db/transaction_db_model.dart';

import '../../value_notifiers.dart';

TextEditingController amountContoller = TextEditingController();
TextEditingController remarkContoller = TextEditingController();

ValueNotifier<String> dropdownValueNotifier = ValueNotifier('');
ValueNotifier<DateTime> dateNotifier = ValueNotifier(DateTime.now());
ValueNotifier<String> buttonColorNotifier = ValueNotifier('Cash');

class AddTransactionScreen extends StatefulWidget {
  final TransactionModel? model;
  const AddTransactionScreen({Key? key, this.model}) : super(key: key);

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  
  final formKey2 = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    print("add page rebuild");
    if (widget.model != null) {
      groupValueNotifier.value = widget.model!.type;
      dropdownValueNotifier.value = '';
      dateNotifier.value = widget.model!.date;
      groupValueNotifier.notifyListeners();
      dropdownValueNotifier.notifyListeners();
      dateNotifier.notifyListeners();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBlue,
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
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
                const SizedBox(height: 10),
                const AddPageDatePicker(),
                const SizedBox(height: 21),
                StartScreenFormField(
                  inputType: TextInputType.number,
                  controller: amountContoller,
                  hint: widget.model == null
                      ? 'Amount'
                      : widget.model!.amount.toString(),
                  borderColor: appBlue,
                  validator: (value) => value!.isEmpty
                      ? 'Enter a amount'
                      : (RegExp(r'\d').hasMatch(value))
                          ? null
                          : 'Enter a valid amount',
                ),
                const SizedBox(height: 30),
                StartScreenFormField(
                  controller: remarkContoller,
                  hint: widget.model == null
                      ? 'Remark (Item, Person Name)'
                      : widget.model!.remark,
                  borderColor: appBlue,
                  validator: (value) => value!.isEmpty
                      ? 'Enter the remark'
                      : (RegExp(r'[^\d\W]').hasMatch(value))
                          ? null
                          : 'Enter a valid remark',
                ),
                const AddPageRadiobuttons(),
                AddPageDropDown(
                  hintText: widget.model == null
                      ? 'Select category'
                      : widget.model!.category,
                ),
                const SizedBox(height: 30),
                const AddPageNewCategory(),
                const SizedBox(height: 24),
                const Text(
                  'Payment Mode',
                  style: TextStyle(
                    color: appBlue,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    PeymentModeButton(
                      button: 'Cash',
                      child: 'Cash',
                      onPressed: () {
                        buttonColorNotifier.value = 'Cash';
                        buttonColorNotifier.notifyListeners();
                        // peymentMode = 'Cash';
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    PeymentModeButton(
                      child: 'Online',
                      button: 'Online',
                      onPressed: () {
                        buttonColorNotifier.value = 'Online';
                        buttonColorNotifier.notifyListeners();
                        //peymentMode = 'Online';
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 54.5,
                  child: ElevatedButton(
                    child: Text(widget.model == null ? 'Save' : 'Save Changes'),
                    //button: buttonColorNotifier.value,
                    onPressed: widget.model == null
                        ? () {
                            if (!formKey2.currentState!.validate()) {
                              return;
                            }
                            if (amountContoller.text == '' ||
                                remarkContoller.text == '' ||
                                dropdownValueNotifier.value == '') {
                              return;
                            }
                            TransactionModel model = TransactionModel(
                              id: DateTime.now().microsecond,
                              type: groupValueNotifier.value,
                              date: dateNotifier.value,
                              amount: amountContoller.text,
                              remark: remarkContoller.text,
                              category: dropdownValueNotifier.value,
                              peymentMode: buttonColorNotifier.value,
                            );
                            TransactionDbFunctions.instance
                                .addTransaction(model);
                            Navigator.of(context).pop();
                            amountContoller.clear();
                            remarkContoller.clear();
                          }
                        : () {
                            TransactionModel model = TransactionModel(
                              id: widget.model!.id,
                              type: groupValueNotifier.value,
                              date: dateNotifier.value,
                              amount: amountContoller.text == ''
                                  ? widget.model!.amount
                                  : amountContoller.text,
                              remark: remarkContoller.text == ''
                                  ? widget.model!.remark
                                  : remarkContoller.text,
                              category: dropdownValueNotifier.value == ''
                                  ? widget.model!.category
                                  : dropdownValueNotifier.value,
                              peymentMode: buttonColorNotifier.value,
                            );
                            TransactionDbFunctions.instance
                                .editTransaction(model);
                            Navigator.of(context).pop();
                          },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(appBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PeymentModeButton extends StatelessWidget {
  final String child;
  final void Function()? onPressed;
  final String button;
  const PeymentModeButton({
    Key? key,
    required this.child,
    required this.button,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: buttonColorNotifier,
      builder: (BuildContext context, String buttonName, Widget? _) {
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(child),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: buttonName == button
                ? MaterialStateProperty.all(appBlue)
                : MaterialStateProperty.all(
                    const Color.fromARGB(255, 192, 191, 191),
                  ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
