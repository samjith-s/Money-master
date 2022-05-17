import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/categories/categories_bloc.dart';

class TypeDropDownWidget extends StatelessWidget {
  const TypeDropDownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return DropdownButton(
          underline: const SizedBox(),
          value: state.dropdownValue,
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
            BlocProvider.of<CategoriesBloc>(context).add(
              CategoriesEvent.changeDropdownValue(
                newValue: newValue.toString(),
              ),
            );
          },
        );
      },
    );
  }
}
