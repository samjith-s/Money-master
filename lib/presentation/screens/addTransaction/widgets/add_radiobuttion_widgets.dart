import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/categories/categories_bloc.dart';
import '../../../../domain/categories/model/category_db_model.dart';

class AddPageRadiobuttons extends StatelessWidget {
  const AddPageRadiobuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return Row(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 25,
                  child: Radio(
                    fillColor: MaterialStateProperty.all(Colors.grey),
                    value: Categorytype.income,
                    groupValue: state.groupValueRadio,
                    onChanged: (newValue) {
                      BlocProvider.of<CategoriesBloc>(context).add(
                        const CategoriesEvent.changeGroupValue(
                          newValue: Categorytype.income,
                        ),
                      );

                      BlocProvider.of<CategoriesBloc>(context).add(
                        CategoriesEvent.changeCategoryDdValue(
                          newValue: 
                          state.incomeCategorieList.isEmpty
                              ? null
                              : state.incomeCategorieList[0].category,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Income',
                  style: TextStyle(
                    fontFamily: 'Rokkitt-Thin',
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Color.fromARGB(255, 234, 233, 233),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                  fillColor: MaterialStateProperty.all(Colors.grey),
                  value: Categorytype.expense,
                  groupValue: state.groupValueRadio,
                  onChanged: (newvalue) {
                    BlocProvider.of<CategoriesBloc>(context).add(
                      const CategoriesEvent.changeGroupValue(
                        newValue: Categorytype.expense,
                      ),
                    );
                    BlocProvider.of<CategoriesBloc>(context).add(
                      CategoriesEvent.changeCategoryDdValue(
                        newValue: state.expenseCategorieList.isEmpty
                            ? null
                            : state.expenseCategorieList[0].category,
                      ),
                    );
                  },
                ),
                const Text(
                  'Expense',
                  style: TextStyle(
                    fontFamily: 'Rokkitt-Thin',
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Color.fromARGB(255, 234, 233, 233),
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
