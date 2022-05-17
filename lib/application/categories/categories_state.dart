part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    required List<CategoryModel> expenseCategorieList,
    required List<CategoryModel> incomeCategorieList,
    required String dropdownValue,
    required Categorytype groupValueRadio,
    required String? categoryDropValue,
    required DateTime addScreenDate,
    required String selectedPeymentButton,
  }) = _CategoriesState;

  factory CategoriesState.initail() => CategoriesState(
        expenseCategorieList: [],
        incomeCategorieList: [],
        dropdownValue: 'Income',
        groupValueRadio: Categorytype.income,
        categoryDropValue: null,
        addScreenDate: DateTime.now(),
        selectedPeymentButton: 'Cash',
      );
}
