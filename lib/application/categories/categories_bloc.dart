import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:money_manager/application/transactions/transactions_bloc.dart';
import 'package:money_manager/domain/categories/category_services.dart';

import '../../domain/categories/model/category_db_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoryServices _categoryServices;
  CategoriesBloc(this._categoryServices) : super(CategoriesState.initail()) {
    on<AddCategory>((event, emit) async {
      _categoryServices.addCategory(category: event.category);
      add(const CategoriesEvent.seperateCategories());
    });
    on<DeleteCategory>((event, emit) async {
      _categoryServices.deleteCategory(id: event.id);
      add(const CategoriesEvent.seperateCategories());
    });
    on<UpdateCategory>((event, emit) async {
      _categoryServices.updateCategory(newModel: event.newModel);
      add(const CategoriesEvent.seperateCategories());
    });
    on<SeperateCategories>((event, emit) async {
      List<CategoryModel> incomeCategorieList = [];
      List<CategoryModel> expenseCategorieList = [];
      List<CategoryModel> categorieList =
          await _categoryServices.getAllCategories();
      await Future.forEach(categorieList, (CategoryModel category) {
        if (category.type == Categorytype.income) {
          incomeCategorieList.add(category);
        } else {
          expenseCategorieList.add(category);
        }
      });
      emit(
        state.copyWith(
          incomeCategorieList: incomeCategorieList,
          expenseCategorieList: expenseCategorieList,
          categoryDropValue: state.groupValueRadio == Categorytype.income
              ? incomeCategorieList[0].category
              : expenseCategorieList[0].category,
        ),
      );
    });
    on<ChangeDropdownValue>((event, emit) {
      emit(state.copyWith(dropdownValue: event.newValue));
    });
    on<ChangeCategoryDdValue>((event, emit) {
      emit(state.copyWith(categoryDropValue: event.newValue));
    });

    on<ChangeGroupValue>((event, emit) {
      emit(state.copyWith(groupValueRadio: event.newValue));
    });
    on<ChangeDate>((event, emit) {
      emit(state.copyWith(addScreenDate: event.newDate));
    });
    on<ChangePeymentButton>(((event, emit) {
      emit(state.copyWith(selectedPeymentButton: event.selectedButton));
    }));
  }
}
