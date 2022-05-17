import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_manager/application/categories/categories_bloc.dart';
import 'package:money_manager/domain/categories/model/category_db_model.dart';
import '../../categoryScreen/category_functions.dart';
import '../../homeScreen/home_page.dart';

class AddPageNewCategory extends StatelessWidget {
  const AddPageNewCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return SizedBox(
          height: height * .06914,
          child: OutlinedButton.icon(
            onPressed: () {
              state.groupValueRadio == Categorytype.income
                  ? showIncomeAddPopup(context)
                  : showExpenseAddPopup(context);
            },
            icon: const Icon(
              Icons.category_outlined,
              color: Color.fromARGB(255, 234, 233, 233),
              size: 15,
            ),
            label: const Text(
              'New Category',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Rokkitt-Thin',
                  color: Color.fromARGB(255, 234, 233, 233),
                  fontWeight: FontWeight.w900),
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.grey,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
        );
      },
    );
  }
}
