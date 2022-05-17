
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/categories/categories_bloc.dart';
import '../../../../config/constant_colors.dart';
import '../../../../domain/categories/model/category_db_model.dart';
import '../../homeScreen/home_page.dart';

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
                    BlocProvider.of<CategoriesBloc>(context)
                        .add(CategoriesEvent.deleteCategory(id: model.id));
                    // CategoryDb.instance.deleteCategory(model);
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
