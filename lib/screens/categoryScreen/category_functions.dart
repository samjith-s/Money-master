import 'package:flutter/material.dart';
import '../../category_db/category_db_functions.dart';
import '../../category_db/category_models.dart';
import '../../value_notifiers.dart';
import 'category_main_page.dart';

showIncomeAddPopup(context, {CategoryModel? model}) {
  myPopUp(
    context: context,
    controller: incomeController,
    onPressed: () {
      CategoryModel obj = CategoryModel(
        id: model == null ? DateTime.now().microsecond : model.id,
        category: incomeController.text,
        type: Categorytype.income,
      );
      CategoryDb.instance.addCategory(obj);
      Navigator.of(context).pop();
      incomeController.clear();
    },
    model: model,
  );
}

Future<dynamic> myPopUp(
    {required controller,
    required void Function() onPressed,
    required context,
    CategoryModel? model}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return CategoryAlertDialog(
        model: model,
        controller: controller,
        onpressed: onPressed,
      );
    },
  );
}

class CategoryAlertDialog extends StatefulWidget {
  final TextEditingController controller;
  final void Function() onpressed;
  final CategoryModel? model;
  const CategoryAlertDialog({
    Key? key,
    required this.controller,
    required this.onpressed,
    this.model,
  }) : super(key: key);

  @override
  State<CategoryAlertDialog> createState() => _CategoryAlertDialogState();
}

class _CategoryAlertDialogState extends State<CategoryAlertDialog> {
  GlobalKey<FormState> formKey1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: formKey1,
        child: Column(
          children: [
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              validator: ((value) {
                if (value!.isEmpty) {
                  return 'Enter category name';
                } else if (selectedValueNotifier.value == 'Expense') {
                  if (expenseListNotifier.value
                      .where((element) => element.category == value.trim())
                      .toList()
                      .isNotEmpty) {
                    return 'Category already exists';
                  } else if (!RegExp(r'[^\d\W]').hasMatch(value)) {
                    return 'Enter a valid category';
                  }
                } else if (selectedValueNotifier.value == 'Income') {
                  if (incomeListNotifier.value
                      .where((element) => element.category == value.trim())
                      .toList()
                      .isNotEmpty) {
                    return 'Category already exists';
                  } else if (!RegExp(r'[^\d\W]').hasMatch(value)) {
                    return 'Enter a valid category';
                  }
                }
                return null;
              }),
              controller: widget.controller,
              decoration: const InputDecoration(
                hintText: 'Category',
                hintStyle: TextStyle(color: Color.fromARGB(255, 223, 221, 221)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFf79087),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFf79087),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFf79087),
                  ),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFf79087),
                ),
              ),
              onPressed: () {
                if (!formKey1.currentState!.validate()) {
                  return;
                }
                widget.onpressed();
              },
              child: widget.model == null
                  ? const Text(
                      'Add',
                      style: TextStyle(color: Colors.black),
                    )
                  : const Text(
                      'Edit',
                      style: TextStyle(color: Colors.black),
                    ),
            )
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
      contentPadding:
          const EdgeInsets.only(right: 30, left: 30, top: 25, bottom: 10),
    );
  }
}

showExpenseAddPopup(context, {CategoryModel? model}) {
  myPopUp(
    context: context,
    controller: expenseController,
    onPressed: () {
      CategoryModel obj = CategoryModel(
          id: model == null ? DateTime.now().millisecond : model.id,
          category: expenseController.text,
          type: Categorytype.expense);
      CategoryDb.instance.addCategory(obj);
      Navigator.of(context).pop();
      expenseController.clear();
    },
    model: model,
  );
}
