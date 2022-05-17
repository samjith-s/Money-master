import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/categories/categories_bloc.dart';
import '../../../../domain/categories/model/category_db_model.dart';
import '../../homeScreen/home_page.dart';

class AddPageDropDown extends StatelessWidget {
  final String hintText;
  const AddPageDropDown({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: height * .07712,
      child: DropdownButtonHideUnderline(
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            List<CategoryModel> list =
                state.groupValueRadio == Categorytype.income
                    ? state.incomeCategorieList
                    : state.expenseCategorieList;
            List<CategoryModel> _list = [];
            _list = state.groupValueRadio == Categorytype.income
                ? state.incomeCategorieList
                    .where((element) => element.category
                        .contains(state.categoryDropValue ?? ''))
                    .toList()
                : state.expenseCategorieList
                    .where((element) => element.category
                        .contains(state.categoryDropValue ?? ''))
                    .toList();
            return DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              hint: Text(
                hintText,
                style: const TextStyle(
                  color: Color.fromARGB(255, 111, 110, 110),
                  fontFamily: 'AnticSlab',
                ),
              ),
              isDense: true,
              value: _list.isEmpty ? null : state.categoryDropValue,
              items: list.map((CategoryModel value) {
                return DropdownMenuItem<String>(
                  value: value.category,
                  child: Text(value.category),
                );
              }).toList(),
              onChanged: (value) {
                BlocProvider.of<CategoriesBloc>(context).add(
                  CategoriesEvent.changeCategoryDdValue(newValue: value!),
                );
              },
              style: const TextStyle(
                fontSize: 17,
                fontFamily: 'Roboto',
                color: Color.fromARGB(255, 234, 233, 233),
              ),
              dropdownColor: const Color.fromARGB(255, 33, 35, 43),
              icon: const Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: Colors.grey,
              ),
            );
          },
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
    );
  }
}
