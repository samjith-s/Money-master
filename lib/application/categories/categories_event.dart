part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.addCategory({required CategoryModel category}) =
      AddCategory;
  const factory CategoriesEvent.deleteCategory({required int id}) =
      DeleteCategory;
  const factory CategoriesEvent.updateCategory(
      {required CategoryModel newModel}) = UpdateCategory;
  const factory CategoriesEvent.seperateCategories() = SeperateCategories;
  const factory CategoriesEvent.changeDropdownValue(
      {required String newValue}) = ChangeDropdownValue;
  const factory CategoriesEvent.changeGroupValue(
      {required Categorytype newValue}) = ChangeGroupValue;
  const factory CategoriesEvent.changeCategoryDdValue(
      {required String? newValue}) = ChangeCategoryDdValue;
  const factory CategoriesEvent.changeDate({required DateTime newDate}) =
      ChangeDate;
  const factory CategoriesEvent.changePeymentButton(
      {required String selectedButton}) = ChangePeymentButton;
}
