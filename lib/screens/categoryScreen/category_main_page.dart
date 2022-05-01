import 'package:flutter/material.dart';
import 'package:money_manager/category_db/category_db_functions.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/common_widgets.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:sizer/sizer.dart';
import '../../value_notifiers.dart';
import '../homeScreen/home_page.dart';
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
    return WillPopScope(
      child: SafeArea(
          child: Column(
        children: [
          const CustomAppBar(title: 'Categories'),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 15, bottom: 15),
            width: 30.w,
            alignment: AlignmentDirectional.center,
            height: height * .05319,
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
                    style: TextStyle(fontFamily: 'AnticSlab'),
                  ),
                  value: 'Income',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Expense',
                    style: TextStyle(fontFamily: 'AnticSlab'),
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
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ValueListenableBuilder(
                valueListenable: selectedValueNotifier.value == 'Income'
                    ? incomeListNotifier
                    : expenseListNotifier,
                builder: (BuildContext ctx, List<CategoryModel> modelList,
                    Widget? _) {
                  return GridView.builder(
                    itemCount: selectedValueNotifier.value == 'Income'
                        ? incomeListNotifier.value.length
                        : expenseListNotifier.value.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio: 2.5),
                    itemBuilder: (BuildContext contxt, int idx) {
                      var model = modelList[idx];
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                model.category,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'AnticSlab',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            PopupMenuButton(
                              child: Container(
                                height: height * .047872,
                                width: 18,
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.more_vert,
                                  size: 20,
                                  color: Color.fromARGB(255, 102, 101, 101),
                                ),
                              ),
                              onSelected: (value) {
                                value == 1
                                    ? selectedValueNotifier.value == 'Income'
                                        ? showIncomeAddPopup(
                                            context,
                                            model: model,
                                          )
                                        : showExpenseAddPopup(
                                            context,
                                            model: model,
                                          )
                                    : showDialog(
                                        context: context,
                                        builder: (ctx) =>
                                            CategoryDeleteConfirmationAlert(
                                          model: model,
                                        ),
                                      );
                              },
                              padding: EdgeInsets.zero,
                              itemBuilder: (ctx) {
                                return [
                                  const PopupMenuItem(
                                    child: Text('Edit'),
                                    value: 1,
                                  ),
                                  const PopupMenuItem(
                                    child: Text('Delete'),
                                    value: 2,
                                  )
                                ];
                              },
                            )
                          ],
                        ),
                        height: height * .066489,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 15),
            child: Container(
              width: height * .066489,
              height: height * .066489,
              decoration: BoxDecoration(
                // border: Border.all(color: appWhite, width: 1),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(40),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 26,
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
      )),
      onWillPop: () {
        selectedIndexNotifier.value = 0;
        selectedIndexNotifier.notifyListeners();
        return Future.value(false);
      },
    );
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
      backgroundColor: Colors.grey,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.only(top: 25, bottom: 10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      content: Column(
        children: [
          const Text(
            'Are you sure?',
            style: TextStyle(
                fontFamily: 'AnticSlab',
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: height * .013297,
          ),
          const Text('This category will be deleted?',
              style: TextStyle(fontFamily: 'AnticSlab')),
           SizedBox(
            height: height * .013297,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel',
                    style: TextStyle(fontFamily: 'AnticSlab', color: appBlue)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {
                    CategoryDb.instance.deleteCategory(model);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Ok',
                      style:
                          TextStyle(fontFamily: 'AnticSlab', color: appBlue)),
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
