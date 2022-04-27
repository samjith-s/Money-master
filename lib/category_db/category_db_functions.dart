import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_manager/category_db/category_models.dart';
import 'package:money_manager/main.dart';

import '../value_notifiers.dart';

abstract class CategoryDbFunctions {
  Future<void> addCategory(CategoryModel value);
  Future<List<CategoryModel>> getCategory();
  Future<void> deleteCategory(model);
  Future<void> separateCategories();
  Future<void> editCategory(int id, CategoryModel model);
}

class CategoryDb implements CategoryDbFunctions {
  CategoryDb._internal();

  static CategoryDb instance = CategoryDb._internal();

  factory CategoryDb() {
    return instance;
  }

  @override
  Future<void> addCategory(CategoryModel value) async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.put(value.id, value);
    separateCategories();
  }

  @override
  Future<List<CategoryModel>> getCategory() async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    return categoryDb.values.toList();
  }

  @override
  Future<void> separateCategories() async {
    final allCategories = await getCategory();
    incomeListNotifier.value.clear();
    expenseListNotifier.value.clear();
    await Future.forEach(allCategories, (CategoryModel category) {
      if (category.type == Categorytype.income) {
        incomeListNotifier.value.add(category);
      } else {
        expenseListNotifier.value.add(category);
      }
    });
    incomeListNotifier.notifyListeners();
    expenseListNotifier.notifyListeners();
  }

  @override
  Future<void> deleteCategory(model) async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.delete(model.id);
    separateCategories();
  }

  @override
  Future<void> editCategory(int id, model) async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.put(id, model);
    separateCategories();
  }
}
