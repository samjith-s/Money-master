import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/categories/categories_bloc.dart';
import 'package:money_manager/config/constant_colors.dart';
import 'package:money_manager/presentation/common_widgets.dart';
import 'package:money_manager/presentation/screens/categoryScreen/widgets/category_type_dropdown_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../application/allrounder/allrounder_bloc.dart';
import '../homeScreen/home_page.dart';
import 'category_functions.dart';
import 'widgets/delete_confirmation_alert_widget.dart';

TextEditingController incomeController = TextEditingController();
TextEditingController expenseController = TextEditingController();
TextStyle categoryTextStyle =
    const TextStyle(color: appWhite, fontFamily: 'Roboto', fontSize: 17);

class MainCatogoryPage extends StatelessWidget {
  const MainCatogoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
        return SafeArea(
            child: Column(
          children: [
            const CustomAppBar(title: 'Categories'),
            Container(
              margin: const EdgeInsets.only(top: 15, right: 15, bottom: 15),
              width: 30.w,
              alignment: AlignmentDirectional.center,
              height: height * .05319,
              child: const TypeDropDownWidget(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  itemCount: state.dropdownValue == 'Income'
                      ? state.incomeCategorieList.length
                      : state.expenseCategorieList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 2.5),
                  itemBuilder: (BuildContext contxt, int idx) {
                    var model = state.dropdownValue == 'Income'
                        ? state.incomeCategorieList[idx]
                        : state.expenseCategorieList[idx];
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
                                  ? state.dropdownValue == 'Income'
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
                    state.dropdownValue == 'Income'
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
      }),
      onWillPop: () {
        BlocProvider.of<AllrounderBloc>(context)
            .add(const AllrounderEvent.navigate(pageIndex: 0));
        return Future.value(false);
      },
    );
  }
}

