import 'package:flutter/material.dart';
import 'package:money_manager/category_db/category_db_functions.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/common_widgets.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:sizer/sizer.dart';
import '../../value_notifiers.dart';
import 'category_functions.dart';

TextEditingController incomeController = TextEditingController();
TextEditingController expenseController = TextEditingController();
TextStyle categoryTextStyle =
    const TextStyle(color: appWhite, fontFamily: 'Roboto', fontSize: 17);

class MainCatogoryPage extends StatefulWidget {
  const MainCatogoryPage({Key? key}) : super(key: key);

  @override
  State<MainCatogoryPage> createState() => MainCatogoryPageState();
}

class MainCatogoryPageState extends State<MainCatogoryPage> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const CustomAppBar(title: 'Categories'),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 15, bottom: 15),
          width: 30.w,          alignment: AlignmentDirectional.center,
          height: 40,
          child: DropdownButton(
            underline: const SizedBox(),
            value: selectedValueNotifier.value,
            dropdownColor: Colors.white,
            focusColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            items: const [
              DropdownMenuItem(
                child: Text(
                  'Income',
                ),
                value: 'Income',
              ),
              DropdownMenuItem(
                child: Text(
                  'Expense',
                ),
                value: 'Expense',
              )
            ],
            onChanged: (newValue) {
              setState(
                () {
                  selectedValueNotifier.value = newValue.toString();
                },
              );
            },
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFf79087),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ValueListenableBuilder(
              valueListenable: selectedValueNotifier.value == 'Income'
                  ? incomeListNotifier
                  : expenseListNotifier,
              builder:
                  (BuildContext ctx, List<CategoryModel> modelList, Widget? _) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext ctx, int idx) {
                    var model = modelList[idx];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                model.category,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 17,
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      selectedValueNotifier.value == 'Income'
                                          ? showIncomeAddPopup(
                                              context,
                                              id: model.id,
                                            )
                                          : showExpenseAddPopup(
                                              context,
                                              id: model.id,
                                            );
                                    },
                                    icon: const Icon(
                                      Icons.edit_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (ctx) =>
                                            CategoryDeleteConfirmationAlert(
                                                model: model),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.delete_outline,
                                      color: expenseRed,
                                    ),
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF272934),
                      ),
                    );
                  },
                  itemCount: selectedValueNotifier.value == 'Income'
                      ? incomeListNotifier.value.length
                      : expenseListNotifier.value.length,
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, right: 15),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: appWhite, width: 1),
                color: const Color(0xFFf79087),
                borderRadius: BorderRadius.circular(40)),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                selectedValueNotifier.value == 'Income'
                    ? showIncomeAddPopup(context)
                    : showExpenseAddPopup(context);
              },
            ),
          ),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    ));
  }
}

List<IconData> incomeIconlist = [
  Icons.real_estate_agent_outlined,
  Icons.money_sharp,
  Icons.work_outline
];

class CategoryDeleteConfirmationAlert extends StatelessWidget {
  final CategoryModel model;
  const CategoryDeleteConfirmationAlert({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.only(top: 25, bottom: 10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      content: Column(
        children: [
          const Text('This category will be deleted'),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {
                    CategoryDb.instance.deleteCategory(model);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ok'),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
