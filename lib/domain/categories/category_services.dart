import 'package:money_manager/domain/categories/model/category_db_model.dart';

abstract class CategoryServices {
  Future<void> addCategory({required CategoryModel category});
  Future<List<CategoryModel>> getAllCategories();
  Future<void> deleteCategory({required int id});
  Future<void> updateCategory({required CategoryModel newModel});
}
