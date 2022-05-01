import 'package:flutter/material.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/screens/addTransaction/add_transaction_widgets.dart';
import 'package:money_manager/screens/homeScreen/home_page.dart';
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
  void initState() {
    if (widget.model != null) {
      groupValueNotifier.value = widget.model!.type;
      dropdownValueNotifier.value = '';
      dateNotifier.value = widget.model!.date;
      groupValueNotifier.notifyListeners();
      dropdownValueNotifier.notifyListeners();
      dateNotifier.notifyListeners();
      remarkContoller.text = widget.model!.remark;
      amountContoller.text = widget.model!.amount;
      buttonColorNotifier.value = widget.model!.peymentMode;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: const Color(0xFF17191f),
        appBar: AppBar(
          backgroundColor: appBlue,
          leading: BackButton(
            onPressed: () {
              if (widget.model != null) {
                Navigator.of(context).pop();
              }
              selectedIndexNotifier.value = 0;
              selectedIndexNotifier.notifyListeners();
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
                    hint: widget.model == null
                        ? 'Amount'
                        : widget.model!.amount.toString(),
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
                    hint: widget.model == null
                        ? 'Remark (Item, Person Name)'
                        : widget.model!.remark,
                    borderColor: Colors.grey,
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
                   SizedBox(
                    height: height*.05319,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height * .07247,
                    child: ElevatedButton(
                      child: Text(
                        widget.model == null ? 'Save' : 'Save Changes',
                        style: const TextStyle(
                            fontFamily: 'Rokkitt-Thin',
                            fontSize: 19,
                            fontWeight: FontWeight.w900),
                      ),
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
                              selectedIndexNotifier.value = 0;
                              selectedIndexNotifier.notifyListeners();
                              amountContoller.clear();
                              remarkContoller.clear();
                            }
                          : () {
                              TransactionModel model = TransactionModel(
                                id: widget.model!.id,
                                type: groupValueNotifier.value,
                                date: dateNotifier.value,
                                amount: amountContoller.text,
                                remark: remarkContoller.text,
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
      ),
      onWillPop: () {
        selectedIndexNotifier.value = 0;
        selectedIndexNotifier.notifyListeners();
        if (widget.model != null) {
          Navigator.of(context).pop();
        }

        return Future.value(false);
      },
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
          child: Text(
            child,
            style: const TextStyle(
              fontFamily: 'AnticSlab',
            ),
          ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: buttonName == button
                ? MaterialStateProperty.all(appBlue)
                : MaterialStateProperty.all(
                    const Color.fromARGB(255, 108, 108, 108),
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
