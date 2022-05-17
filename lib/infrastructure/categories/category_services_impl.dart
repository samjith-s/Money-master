
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:money_manager/domain/categories/category_services.dart';
import '../../domain/categories/model/category_db_model.dart';

@LazySingleton(as: CategoryServices)
class CategoryServicesImpl extends CategoryServices {
  final categoryDbName = 'category_db';

  @override
  Future<void> addCategory({required CategoryModel category}) async {
    final categoryDb =
        await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.put(category.id, category);
  }

  @override
  Future<void> deleteCategory({required int id}) async {
    final categoryDb =
        await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.delete(id);
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final categoryDb =
        await Hive.openBox<CategoryModel>(categoryDbName);
    return categoryDb.values.toList();
  }

  @override
  Future<void> updateCategory({required CategoryModel newModel}) async {
    final categoryDb =
        await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.put(newModel.id, newModel);
  }
}
