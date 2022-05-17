// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  final CategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(CategoriesEvent) _then;
}

/// @nodoc
abstract class _$$AddCategoryCopyWith<$Res> {
  factory _$$AddCategoryCopyWith(
          _$AddCategory value, $Res Function(_$AddCategory) then) =
      __$$AddCategoryCopyWithImpl<$Res>;
  $Res call({CategoryModel category});
}

/// @nodoc
class __$$AddCategoryCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$AddCategoryCopyWith<$Res> {
  __$$AddCategoryCopyWithImpl(
      _$AddCategory _value, $Res Function(_$AddCategory) _then)
      : super(_value, (v) => _then(v as _$AddCategory));

  @override
  _$AddCategory get _value => super._value as _$AddCategory;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$AddCategory(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$AddCategory implements AddCategory {
  const _$AddCategory({required this.category});

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CategoriesEvent.addCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategory &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$AddCategoryCopyWith<_$AddCategory> get copyWith =>
      __$$AddCategoryCopyWithImpl<_$AddCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return addCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return addCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategory implements CategoriesEvent {
  const factory AddCategory({required final CategoryModel category}) =
      _$AddCategory;

  CategoryModel get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddCategoryCopyWith<_$AddCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryCopyWith<$Res> {
  factory _$$DeleteCategoryCopyWith(
          _$DeleteCategory value, $Res Function(_$DeleteCategory) then) =
      __$$DeleteCategoryCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCategoryCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$DeleteCategoryCopyWith<$Res> {
  __$$DeleteCategoryCopyWithImpl(
      _$DeleteCategory _value, $Res Function(_$DeleteCategory) _then)
      : super(_value, (v) => _then(v as _$DeleteCategory));

  @override
  _$DeleteCategory get _value => super._value as _$DeleteCategory;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DeleteCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCategory implements DeleteCategory {
  const _$DeleteCategory({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CategoriesEvent.deleteCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategory &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$DeleteCategoryCopyWith<_$DeleteCategory> get copyWith =>
      __$$DeleteCategoryCopyWithImpl<_$DeleteCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class DeleteCategory implements CategoriesEvent {
  const factory DeleteCategory({required final int id}) = _$DeleteCategory;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteCategoryCopyWith<_$DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryCopyWith<$Res> {
  factory _$$UpdateCategoryCopyWith(
          _$UpdateCategory value, $Res Function(_$UpdateCategory) then) =
      __$$UpdateCategoryCopyWithImpl<$Res>;
  $Res call({CategoryModel newModel});
}

/// @nodoc
class __$$UpdateCategoryCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$UpdateCategoryCopyWith<$Res> {
  __$$UpdateCategoryCopyWithImpl(
      _$UpdateCategory _value, $Res Function(_$UpdateCategory) _then)
      : super(_value, (v) => _then(v as _$UpdateCategory));

  @override
  _$UpdateCategory get _value => super._value as _$UpdateCategory;

  @override
  $Res call({
    Object? newModel = freezed,
  }) {
    return _then(_$UpdateCategory(
      newModel: newModel == freezed
          ? _value.newModel
          : newModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$UpdateCategory implements UpdateCategory {
  const _$UpdateCategory({required this.newModel});

  @override
  final CategoryModel newModel;

  @override
  String toString() {
    return 'CategoriesEvent.updateCategory(newModel: $newModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategory &&
            const DeepCollectionEquality().equals(other.newModel, newModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newModel));

  @JsonKey(ignore: true)
  @override
  _$$UpdateCategoryCopyWith<_$UpdateCategory> get copyWith =>
      __$$UpdateCategoryCopyWithImpl<_$UpdateCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return updateCategory(newModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return updateCategory?.call(newModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(newModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class UpdateCategory implements CategoriesEvent {
  const factory UpdateCategory({required final CategoryModel newModel}) =
      _$UpdateCategory;

  CategoryModel get newModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateCategoryCopyWith<_$UpdateCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeperateCategoriesCopyWith<$Res> {
  factory _$$SeperateCategoriesCopyWith(_$SeperateCategories value,
          $Res Function(_$SeperateCategories) then) =
      __$$SeperateCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeperateCategoriesCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$SeperateCategoriesCopyWith<$Res> {
  __$$SeperateCategoriesCopyWithImpl(
      _$SeperateCategories _value, $Res Function(_$SeperateCategories) _then)
      : super(_value, (v) => _then(v as _$SeperateCategories));

  @override
  _$SeperateCategories get _value => super._value as _$SeperateCategories;
}

/// @nodoc

class _$SeperateCategories implements SeperateCategories {
  const _$SeperateCategories();

  @override
  String toString() {
    return 'CategoriesEvent.seperateCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SeperateCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return seperateCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return seperateCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (seperateCategories != null) {
      return seperateCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return seperateCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return seperateCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (seperateCategories != null) {
      return seperateCategories(this);
    }
    return orElse();
  }
}

abstract class SeperateCategories implements CategoriesEvent {
  const factory SeperateCategories() = _$SeperateCategories;
}

/// @nodoc
abstract class _$$ChangeDropdownValueCopyWith<$Res> {
  factory _$$ChangeDropdownValueCopyWith(_$ChangeDropdownValue value,
          $Res Function(_$ChangeDropdownValue) then) =
      __$$ChangeDropdownValueCopyWithImpl<$Res>;
  $Res call({String newValue});
}

/// @nodoc
class __$$ChangeDropdownValueCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$ChangeDropdownValueCopyWith<$Res> {
  __$$ChangeDropdownValueCopyWithImpl(
      _$ChangeDropdownValue _value, $Res Function(_$ChangeDropdownValue) _then)
      : super(_value, (v) => _then(v as _$ChangeDropdownValue));

  @override
  _$ChangeDropdownValue get _value => super._value as _$ChangeDropdownValue;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$ChangeDropdownValue(
      newValue: newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeDropdownValue implements ChangeDropdownValue {
  const _$ChangeDropdownValue({required this.newValue});

  @override
  final String newValue;

  @override
  String toString() {
    return 'CategoriesEvent.changeDropdownValue(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDropdownValue &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$ChangeDropdownValueCopyWith<_$ChangeDropdownValue> get copyWith =>
      __$$ChangeDropdownValueCopyWithImpl<_$ChangeDropdownValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return changeDropdownValue(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return changeDropdownValue?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeDropdownValue != null) {
      return changeDropdownValue(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return changeDropdownValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return changeDropdownValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeDropdownValue != null) {
      return changeDropdownValue(this);
    }
    return orElse();
  }
}

abstract class ChangeDropdownValue implements CategoriesEvent {
  const factory ChangeDropdownValue({required final String newValue}) =
      _$ChangeDropdownValue;

  String get newValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeDropdownValueCopyWith<_$ChangeDropdownValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeGroupValueCopyWith<$Res> {
  factory _$$ChangeGroupValueCopyWith(
          _$ChangeGroupValue value, $Res Function(_$ChangeGroupValue) then) =
      __$$ChangeGroupValueCopyWithImpl<$Res>;
  $Res call({Categorytype newValue});
}

/// @nodoc
class __$$ChangeGroupValueCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$ChangeGroupValueCopyWith<$Res> {
  __$$ChangeGroupValueCopyWithImpl(
      _$ChangeGroupValue _value, $Res Function(_$ChangeGroupValue) _then)
      : super(_value, (v) => _then(v as _$ChangeGroupValue));

  @override
  _$ChangeGroupValue get _value => super._value as _$ChangeGroupValue;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$ChangeGroupValue(
      newValue: newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as Categorytype,
    ));
  }
}

/// @nodoc

class _$ChangeGroupValue implements ChangeGroupValue {
  const _$ChangeGroupValue({required this.newValue});

  @override
  final Categorytype newValue;

  @override
  String toString() {
    return 'CategoriesEvent.changeGroupValue(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeGroupValue &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$ChangeGroupValueCopyWith<_$ChangeGroupValue> get copyWith =>
      __$$ChangeGroupValueCopyWithImpl<_$ChangeGroupValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return changeGroupValue(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return changeGroupValue?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeGroupValue != null) {
      return changeGroupValue(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return changeGroupValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return changeGroupValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeGroupValue != null) {
      return changeGroupValue(this);
    }
    return orElse();
  }
}

abstract class ChangeGroupValue implements CategoriesEvent {
  const factory ChangeGroupValue({required final Categorytype newValue}) =
      _$ChangeGroupValue;

  Categorytype get newValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeGroupValueCopyWith<_$ChangeGroupValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCategoryDdValueCopyWith<$Res> {
  factory _$$ChangeCategoryDdValueCopyWith(_$ChangeCategoryDdValue value,
          $Res Function(_$ChangeCategoryDdValue) then) =
      __$$ChangeCategoryDdValueCopyWithImpl<$Res>;
  $Res call({String? newValue});
}

/// @nodoc
class __$$ChangeCategoryDdValueCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$ChangeCategoryDdValueCopyWith<$Res> {
  __$$ChangeCategoryDdValueCopyWithImpl(_$ChangeCategoryDdValue _value,
      $Res Function(_$ChangeCategoryDdValue) _then)
      : super(_value, (v) => _then(v as _$ChangeCategoryDdValue));

  @override
  _$ChangeCategoryDdValue get _value => super._value as _$ChangeCategoryDdValue;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$ChangeCategoryDdValue(
      newValue: newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryDdValue implements ChangeCategoryDdValue {
  const _$ChangeCategoryDdValue({required this.newValue});

  @override
  final String? newValue;

  @override
  String toString() {
    return 'CategoriesEvent.changeCategoryDdValue(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryDdValue &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$ChangeCategoryDdValueCopyWith<_$ChangeCategoryDdValue> get copyWith =>
      __$$ChangeCategoryDdValueCopyWithImpl<_$ChangeCategoryDdValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return changeCategoryDdValue(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return changeCategoryDdValue?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeCategoryDdValue != null) {
      return changeCategoryDdValue(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return changeCategoryDdValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return changeCategoryDdValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeCategoryDdValue != null) {
      return changeCategoryDdValue(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryDdValue implements CategoriesEvent {
  const factory ChangeCategoryDdValue({required final String? newValue}) =
      _$ChangeCategoryDdValue;

  String? get newValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeCategoryDdValueCopyWith<_$ChangeCategoryDdValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDateCopyWith<$Res> {
  factory _$$ChangeDateCopyWith(
          _$ChangeDate value, $Res Function(_$ChangeDate) then) =
      __$$ChangeDateCopyWithImpl<$Res>;
  $Res call({DateTime newDate});
}

/// @nodoc
class __$$ChangeDateCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$ChangeDateCopyWith<$Res> {
  __$$ChangeDateCopyWithImpl(
      _$ChangeDate _value, $Res Function(_$ChangeDate) _then)
      : super(_value, (v) => _then(v as _$ChangeDate));

  @override
  _$ChangeDate get _value => super._value as _$ChangeDate;

  @override
  $Res call({
    Object? newDate = freezed,
  }) {
    return _then(_$ChangeDate(
      newDate: newDate == freezed
          ? _value.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeDate implements ChangeDate {
  const _$ChangeDate({required this.newDate});

  @override
  final DateTime newDate;

  @override
  String toString() {
    return 'CategoriesEvent.changeDate(newDate: $newDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDate &&
            const DeepCollectionEquality().equals(other.newDate, newDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newDate));

  @JsonKey(ignore: true)
  @override
  _$$ChangeDateCopyWith<_$ChangeDate> get copyWith =>
      __$$ChangeDateCopyWithImpl<_$ChangeDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return changeDate(newDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return changeDate?.call(newDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(newDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class ChangeDate implements CategoriesEvent {
  const factory ChangeDate({required final DateTime newDate}) = _$ChangeDate;

  DateTime get newDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeDateCopyWith<_$ChangeDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePeymentButtonCopyWith<$Res> {
  factory _$$ChangePeymentButtonCopyWith(_$ChangePeymentButton value,
          $Res Function(_$ChangePeymentButton) then) =
      __$$ChangePeymentButtonCopyWithImpl<$Res>;
  $Res call({String selectedButton});
}

/// @nodoc
class __$$ChangePeymentButtonCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$$ChangePeymentButtonCopyWith<$Res> {
  __$$ChangePeymentButtonCopyWithImpl(
      _$ChangePeymentButton _value, $Res Function(_$ChangePeymentButton) _then)
      : super(_value, (v) => _then(v as _$ChangePeymentButton));

  @override
  _$ChangePeymentButton get _value => super._value as _$ChangePeymentButton;

  @override
  $Res call({
    Object? selectedButton = freezed,
  }) {
    return _then(_$ChangePeymentButton(
      selectedButton: selectedButton == freezed
          ? _value.selectedButton
          : selectedButton // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePeymentButton implements ChangePeymentButton {
  const _$ChangePeymentButton({required this.selectedButton});

  @override
  final String selectedButton;

  @override
  String toString() {
    return 'CategoriesEvent.changePeymentButton(selectedButton: $selectedButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePeymentButton &&
            const DeepCollectionEquality()
                .equals(other.selectedButton, selectedButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedButton));

  @JsonKey(ignore: true)
  @override
  _$$ChangePeymentButtonCopyWith<_$ChangePeymentButton> get copyWith =>
      __$$ChangePeymentButtonCopyWithImpl<_$ChangePeymentButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel newModel) updateCategory,
    required TResult Function() seperateCategories,
    required TResult Function(String newValue) changeDropdownValue,
    required TResult Function(Categorytype newValue) changeGroupValue,
    required TResult Function(String? newValue) changeCategoryDdValue,
    required TResult Function(DateTime newDate) changeDate,
    required TResult Function(String selectedButton) changePeymentButton,
  }) {
    return changePeymentButton(selectedButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
  }) {
    return changePeymentButton?.call(selectedButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel newModel)? updateCategory,
    TResult Function()? seperateCategories,
    TResult Function(String newValue)? changeDropdownValue,
    TResult Function(Categorytype newValue)? changeGroupValue,
    TResult Function(String? newValue)? changeCategoryDdValue,
    TResult Function(DateTime newDate)? changeDate,
    TResult Function(String selectedButton)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changePeymentButton != null) {
      return changePeymentButton(selectedButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategory value) addCategory,
    required TResult Function(DeleteCategory value) deleteCategory,
    required TResult Function(UpdateCategory value) updateCategory,
    required TResult Function(SeperateCategories value) seperateCategories,
    required TResult Function(ChangeDropdownValue value) changeDropdownValue,
    required TResult Function(ChangeGroupValue value) changeGroupValue,
    required TResult Function(ChangeCategoryDdValue value)
        changeCategoryDdValue,
    required TResult Function(ChangeDate value) changeDate,
    required TResult Function(ChangePeymentButton value) changePeymentButton,
  }) {
    return changePeymentButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
  }) {
    return changePeymentButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategory value)? addCategory,
    TResult Function(DeleteCategory value)? deleteCategory,
    TResult Function(UpdateCategory value)? updateCategory,
    TResult Function(SeperateCategories value)? seperateCategories,
    TResult Function(ChangeDropdownValue value)? changeDropdownValue,
    TResult Function(ChangeGroupValue value)? changeGroupValue,
    TResult Function(ChangeCategoryDdValue value)? changeCategoryDdValue,
    TResult Function(ChangeDate value)? changeDate,
    TResult Function(ChangePeymentButton value)? changePeymentButton,
    required TResult orElse(),
  }) {
    if (changePeymentButton != null) {
      return changePeymentButton(this);
    }
    return orElse();
  }
}

abstract class ChangePeymentButton implements CategoriesEvent {
  const factory ChangePeymentButton({required final String selectedButton}) =
      _$ChangePeymentButton;

  String get selectedButton => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePeymentButtonCopyWith<_$ChangePeymentButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  List<CategoryModel> get expenseCategorieList =>
      throw _privateConstructorUsedError;
  List<CategoryModel> get incomeCategorieList =>
      throw _privateConstructorUsedError;
  String get dropdownValue => throw _privateConstructorUsedError;
  Categorytype get groupValueRadio => throw _privateConstructorUsedError;
  String? get categoryDropValue => throw _privateConstructorUsedError;
  DateTime get addScreenDate => throw _privateConstructorUsedError;
  String get selectedPeymentButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> expenseCategorieList,
      List<CategoryModel> incomeCategorieList,
      String dropdownValue,
      Categorytype groupValueRadio,
      String? categoryDropValue,
      DateTime addScreenDate,
      String selectedPeymentButton});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;

  @override
  $Res call({
    Object? expenseCategorieList = freezed,
    Object? incomeCategorieList = freezed,
    Object? dropdownValue = freezed,
    Object? groupValueRadio = freezed,
    Object? categoryDropValue = freezed,
    Object? addScreenDate = freezed,
    Object? selectedPeymentButton = freezed,
  }) {
    return _then(_value.copyWith(
      expenseCategorieList: expenseCategorieList == freezed
          ? _value.expenseCategorieList
          : expenseCategorieList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      incomeCategorieList: incomeCategorieList == freezed
          ? _value.incomeCategorieList
          : incomeCategorieList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      dropdownValue: dropdownValue == freezed
          ? _value.dropdownValue
          : dropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      groupValueRadio: groupValueRadio == freezed
          ? _value.groupValueRadio
          : groupValueRadio // ignore: cast_nullable_to_non_nullable
              as Categorytype,
      categoryDropValue: categoryDropValue == freezed
          ? _value.categoryDropValue
          : categoryDropValue // ignore: cast_nullable_to_non_nullable
              as String?,
      addScreenDate: addScreenDate == freezed
          ? _value.addScreenDate
          : addScreenDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedPeymentButton: selectedPeymentButton == freezed
          ? _value.selectedPeymentButton
          : selectedPeymentButton // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoriesStateCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$_CategoriesStateCopyWith(
          _$_CategoriesState value, $Res Function(_$_CategoriesState) then) =
      __$$_CategoriesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> expenseCategorieList,
      List<CategoryModel> incomeCategorieList,
      String dropdownValue,
      Categorytype groupValueRadio,
      String? categoryDropValue,
      DateTime addScreenDate,
      String selectedPeymentButton});
}

/// @nodoc
class __$$_CategoriesStateCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$$_CategoriesStateCopyWith<$Res> {
  __$$_CategoriesStateCopyWithImpl(
      _$_CategoriesState _value, $Res Function(_$_CategoriesState) _then)
      : super(_value, (v) => _then(v as _$_CategoriesState));

  @override
  _$_CategoriesState get _value => super._value as _$_CategoriesState;

  @override
  $Res call({
    Object? expenseCategorieList = freezed,
    Object? incomeCategorieList = freezed,
    Object? dropdownValue = freezed,
    Object? groupValueRadio = freezed,
    Object? categoryDropValue = freezed,
    Object? addScreenDate = freezed,
    Object? selectedPeymentButton = freezed,
  }) {
    return _then(_$_CategoriesState(
      expenseCategorieList: expenseCategorieList == freezed
          ? _value._expenseCategorieList
          : expenseCategorieList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      incomeCategorieList: incomeCategorieList == freezed
          ? _value._incomeCategorieList
          : incomeCategorieList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      dropdownValue: dropdownValue == freezed
          ? _value.dropdownValue
          : dropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      groupValueRadio: groupValueRadio == freezed
          ? _value.groupValueRadio
          : groupValueRadio // ignore: cast_nullable_to_non_nullable
              as Categorytype,
      categoryDropValue: categoryDropValue == freezed
          ? _value.categoryDropValue
          : categoryDropValue // ignore: cast_nullable_to_non_nullable
              as String?,
      addScreenDate: addScreenDate == freezed
          ? _value.addScreenDate
          : addScreenDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedPeymentButton: selectedPeymentButton == freezed
          ? _value.selectedPeymentButton
          : selectedPeymentButton // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoriesState implements _CategoriesState {
  const _$_CategoriesState(
      {required final List<CategoryModel> expenseCategorieList,
      required final List<CategoryModel> incomeCategorieList,
      required this.dropdownValue,
      required this.groupValueRadio,
      required this.categoryDropValue,
      required this.addScreenDate,
      required this.selectedPeymentButton})
      : _expenseCategorieList = expenseCategorieList,
        _incomeCategorieList = incomeCategorieList;

  final List<CategoryModel> _expenseCategorieList;
  @override
  List<CategoryModel> get expenseCategorieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseCategorieList);
  }

  final List<CategoryModel> _incomeCategorieList;
  @override
  List<CategoryModel> get incomeCategorieList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeCategorieList);
  }

  @override
  final String dropdownValue;
  @override
  final Categorytype groupValueRadio;
  @override
  final String? categoryDropValue;
  @override
  final DateTime addScreenDate;
  @override
  final String selectedPeymentButton;

  @override
  String toString() {
    return 'CategoriesState(expenseCategorieList: $expenseCategorieList, incomeCategorieList: $incomeCategorieList, dropdownValue: $dropdownValue, groupValueRadio: $groupValueRadio, categoryDropValue: $categoryDropValue, addScreenDate: $addScreenDate, selectedPeymentButton: $selectedPeymentButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesState &&
            const DeepCollectionEquality()
                .equals(other._expenseCategorieList, _expenseCategorieList) &&
            const DeepCollectionEquality()
                .equals(other._incomeCategorieList, _incomeCategorieList) &&
            const DeepCollectionEquality()
                .equals(other.dropdownValue, dropdownValue) &&
            const DeepCollectionEquality()
                .equals(other.groupValueRadio, groupValueRadio) &&
            const DeepCollectionEquality()
                .equals(other.categoryDropValue, categoryDropValue) &&
            const DeepCollectionEquality()
                .equals(other.addScreenDate, addScreenDate) &&
            const DeepCollectionEquality()
                .equals(other.selectedPeymentButton, selectedPeymentButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expenseCategorieList),
      const DeepCollectionEquality().hash(_incomeCategorieList),
      const DeepCollectionEquality().hash(dropdownValue),
      const DeepCollectionEquality().hash(groupValueRadio),
      const DeepCollectionEquality().hash(categoryDropValue),
      const DeepCollectionEquality().hash(addScreenDate),
      const DeepCollectionEquality().hash(selectedPeymentButton));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesStateCopyWith<_$_CategoriesState> get copyWith =>
      __$$_CategoriesStateCopyWithImpl<_$_CategoriesState>(this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {required final List<CategoryModel> expenseCategorieList,
      required final List<CategoryModel> incomeCategorieList,
      required final String dropdownValue,
      required final Categorytype groupValueRadio,
      required final String? categoryDropValue,
      required final DateTime addScreenDate,
      required final String selectedPeymentButton}) = _$_CategoriesState;

  @override
  List<CategoryModel> get expenseCategorieList =>
      throw _privateConstructorUsedError;
  @override
  List<CategoryModel> get incomeCategorieList =>
      throw _privateConstructorUsedError;
  @override
  String get dropdownValue => throw _privateConstructorUsedError;
  @override
  Categorytype get groupValueRadio => throw _privateConstructorUsedError;
  @override
  String? get categoryDropValue => throw _privateConstructorUsedError;
  @override
  DateTime get addScreenDate => throw _privateConstructorUsedError;
  @override
  String get selectedPeymentButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesStateCopyWith<_$_CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
