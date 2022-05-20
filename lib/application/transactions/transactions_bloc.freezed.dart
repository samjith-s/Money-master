// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  final TransactionsEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionsEvent) _then;
}

/// @nodoc
abstract class _$$GetAllTransactionsCopyWith<$Res> {
  factory _$$GetAllTransactionsCopyWith(_$GetAllTransactions value,
          $Res Function(_$GetAllTransactions) then) =
      __$$GetAllTransactionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTransactionsCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$GetAllTransactionsCopyWith<$Res> {
  __$$GetAllTransactionsCopyWithImpl(
      _$GetAllTransactions _value, $Res Function(_$GetAllTransactions) _then)
      : super(_value, (v) => _then(v as _$GetAllTransactions));

  @override
  _$GetAllTransactions get _value => super._value as _$GetAllTransactions;
}

/// @nodoc

class _$GetAllTransactions
    with DiagnosticableTreeMixin
    implements GetAllTransactions {
  const _$GetAllTransactions();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.getAllTransactions()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TransactionsEvent.getAllTransactions'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTransactions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return getAllTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return getAllTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (getAllTransactions != null) {
      return getAllTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return getAllTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return getAllTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (getAllTransactions != null) {
      return getAllTransactions(this);
    }
    return orElse();
  }
}

abstract class GetAllTransactions implements TransactionsEvent {
  const factory GetAllTransactions() = _$GetAllTransactions;
}

/// @nodoc
abstract class _$$AddTransactionCopyWith<$Res> {
  factory _$$AddTransactionCopyWith(
          _$AddTransaction value, $Res Function(_$AddTransaction) then) =
      __$$AddTransactionCopyWithImpl<$Res>;
  $Res call({TransactionModel model});
}

/// @nodoc
class __$$AddTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$AddTransactionCopyWith<$Res> {
  __$$AddTransactionCopyWithImpl(
      _$AddTransaction _value, $Res Function(_$AddTransaction) _then)
      : super(_value, (v) => _then(v as _$AddTransaction));

  @override
  _$AddTransaction get _value => super._value as _$AddTransaction;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AddTransaction(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$AddTransaction with DiagnosticableTreeMixin implements AddTransaction {
  const _$AddTransaction({required this.model});

  @override
  final TransactionModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.addTransaction(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsEvent.addTransaction'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransaction &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$AddTransactionCopyWith<_$AddTransaction> get copyWith =>
      __$$AddTransactionCopyWithImpl<_$AddTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return addTransaction(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return addTransaction?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class AddTransaction implements TransactionsEvent {
  const factory AddTransaction({required final TransactionModel model}) =
      _$AddTransaction;

  TransactionModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddTransactionCopyWith<_$AddTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTransactionCopyWith<$Res> {
  factory _$$DeleteTransactionCopyWith(
          _$DeleteTransaction value, $Res Function(_$DeleteTransaction) then) =
      __$$DeleteTransactionCopyWithImpl<$Res>;
  $Res call({int id, BuildContext context});
}

/// @nodoc
class __$$DeleteTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$DeleteTransactionCopyWith<$Res> {
  __$$DeleteTransactionCopyWithImpl(
      _$DeleteTransaction _value, $Res Function(_$DeleteTransaction) _then)
      : super(_value, (v) => _then(v as _$DeleteTransaction));

  @override
  _$DeleteTransaction get _value => super._value as _$DeleteTransaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? context = freezed,
  }) {
    return _then(_$DeleteTransaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$DeleteTransaction
    with DiagnosticableTreeMixin
    implements DeleteTransaction {
  const _$DeleteTransaction({required this.id, required this.context});

  @override
  final int id;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.deleteTransaction(id: $id, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsEvent.deleteTransaction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$DeleteTransactionCopyWith<_$DeleteTransaction> get copyWith =>
      __$$DeleteTransactionCopyWithImpl<_$DeleteTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return deleteTransaction(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return deleteTransaction?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class DeleteTransaction implements TransactionsEvent {
  const factory DeleteTransaction(
      {required final int id,
      required final BuildContext context}) = _$DeleteTransaction;

  int get id => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteTransactionCopyWith<_$DeleteTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionCopyWith<$Res> {
  factory _$$UpdateTransactionCopyWith(
          _$UpdateTransaction value, $Res Function(_$UpdateTransaction) then) =
      __$$UpdateTransactionCopyWithImpl<$Res>;
  $Res call({TransactionModel newModel});
}

/// @nodoc
class __$$UpdateTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$UpdateTransactionCopyWith<$Res> {
  __$$UpdateTransactionCopyWithImpl(
      _$UpdateTransaction _value, $Res Function(_$UpdateTransaction) _then)
      : super(_value, (v) => _then(v as _$UpdateTransaction));

  @override
  _$UpdateTransaction get _value => super._value as _$UpdateTransaction;

  @override
  $Res call({
    Object? newModel = freezed,
  }) {
    return _then(_$UpdateTransaction(
      newModel: newModel == freezed
          ? _value.newModel
          : newModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$UpdateTransaction
    with DiagnosticableTreeMixin
    implements UpdateTransaction {
  const _$UpdateTransaction({required this.newModel});

  @override
  final TransactionModel newModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.updateTransaction(newModel: $newModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsEvent.updateTransaction'))
      ..add(DiagnosticsProperty('newModel', newModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransaction &&
            const DeepCollectionEquality().equals(other.newModel, newModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newModel));

  @JsonKey(ignore: true)
  @override
  _$$UpdateTransactionCopyWith<_$UpdateTransaction> get copyWith =>
      __$$UpdateTransactionCopyWithImpl<_$UpdateTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return updateTransaction(newModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return updateTransaction?.call(newModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(newModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class UpdateTransaction implements TransactionsEvent {
  const factory UpdateTransaction({required final TransactionModel newModel}) =
      _$UpdateTransaction;

  TransactionModel get newModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateTransactionCopyWith<_$UpdateTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterTransactionsCopyWith<$Res> {
  factory _$$FilterTransactionsCopyWith(_$FilterTransactions value,
          $Res Function(_$FilterTransactions) then) =
      __$$FilterTransactionsCopyWithImpl<$Res>;
  $Res call({String period});
}

/// @nodoc
class __$$FilterTransactionsCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$FilterTransactionsCopyWith<$Res> {
  __$$FilterTransactionsCopyWithImpl(
      _$FilterTransactions _value, $Res Function(_$FilterTransactions) _then)
      : super(_value, (v) => _then(v as _$FilterTransactions));

  @override
  _$FilterTransactions get _value => super._value as _$FilterTransactions;

  @override
  $Res call({
    Object? period = freezed,
  }) {
    return _then(_$FilterTransactions(
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterTransactions
    with DiagnosticableTreeMixin
    implements FilterTransactions {
  const _$FilterTransactions({required this.period});

  @override
  final String period;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.filterTransactions(period: $period)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsEvent.filterTransactions'))
      ..add(DiagnosticsProperty('period', period));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterTransactions &&
            const DeepCollectionEquality().equals(other.period, period));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(period));

  @JsonKey(ignore: true)
  @override
  _$$FilterTransactionsCopyWith<_$FilterTransactions> get copyWith =>
      __$$FilterTransactionsCopyWithImpl<_$FilterTransactions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return filterTransactions(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return filterTransactions?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (filterTransactions != null) {
      return filterTransactions(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return filterTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return filterTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (filterTransactions != null) {
      return filterTransactions(this);
    }
    return orElse();
  }
}

abstract class FilterTransactions implements TransactionsEvent {
  const factory FilterTransactions({required final String period}) =
      _$FilterTransactions;

  String get period => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FilterTransactionsCopyWith<_$FilterTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFilterDDValueCopyWith<$Res> {
  factory _$$ChangeFilterDDValueCopyWith(_$ChangeFilterDDValue value,
          $Res Function(_$ChangeFilterDDValue) then) =
      __$$ChangeFilterDDValueCopyWithImpl<$Res>;
  $Res call({String? newValue});
}

/// @nodoc
class __$$ChangeFilterDDValueCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$ChangeFilterDDValueCopyWith<$Res> {
  __$$ChangeFilterDDValueCopyWithImpl(
      _$ChangeFilterDDValue _value, $Res Function(_$ChangeFilterDDValue) _then)
      : super(_value, (v) => _then(v as _$ChangeFilterDDValue));

  @override
  _$ChangeFilterDDValue get _value => super._value as _$ChangeFilterDDValue;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(_$ChangeFilterDDValue(
      newValue: newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeFilterDDValue
    with DiagnosticableTreeMixin
    implements ChangeFilterDDValue {
  const _$ChangeFilterDDValue({required this.newValue});

  @override
  final String? newValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.changeFilterDDValue(newValue: $newValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'TransactionsEvent.changeFilterDDValue'))
      ..add(DiagnosticsProperty('newValue', newValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFilterDDValue &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newValue));

  @JsonKey(ignore: true)
  @override
  _$$ChangeFilterDDValueCopyWith<_$ChangeFilterDDValue> get copyWith =>
      __$$ChangeFilterDDValueCopyWithImpl<_$ChangeFilterDDValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return changeFilterDDValue(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return changeFilterDDValue?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (changeFilterDDValue != null) {
      return changeFilterDDValue(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return changeFilterDDValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return changeFilterDDValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (changeFilterDDValue != null) {
      return changeFilterDDValue(this);
    }
    return orElse();
  }
}

abstract class ChangeFilterDDValue implements TransactionsEvent {
  const factory ChangeFilterDDValue({required final String? newValue}) =
      _$ChangeFilterDDValue;

  String? get newValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeFilterDDValueCopyWith<_$ChangeFilterDDValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByPeriodCopyWith<$Res> {
  factory _$$FilterByPeriodCopyWith(
          _$FilterByPeriod value, $Res Function(_$FilterByPeriod) then) =
      __$$FilterByPeriodCopyWithImpl<$Res>;
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$FilterByPeriodCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$FilterByPeriodCopyWith<$Res> {
  __$$FilterByPeriodCopyWithImpl(
      _$FilterByPeriod _value, $Res Function(_$FilterByPeriod) _then)
      : super(_value, (v) => _then(v as _$FilterByPeriod));

  @override
  _$FilterByPeriod get _value => super._value as _$FilterByPeriod;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$FilterByPeriod(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FilterByPeriod with DiagnosticableTreeMixin implements FilterByPeriod {
  const _$FilterByPeriod({required this.start, required this.end});

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.filterByPeriod(start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsEvent.filterByPeriod'))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByPeriod &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$FilterByPeriodCopyWith<_$FilterByPeriod> get copyWith =>
      __$$FilterByPeriodCopyWithImpl<_$FilterByPeriod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return filterByPeriod(start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return filterByPeriod?.call(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (filterByPeriod != null) {
      return filterByPeriod(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return filterByPeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return filterByPeriod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (filterByPeriod != null) {
      return filterByPeriod(this);
    }
    return orElse();
  }
}

abstract class FilterByPeriod implements TransactionsEvent {
  const factory FilterByPeriod(
      {required final DateTime start,
      required final DateTime end}) = _$FilterByPeriod;

  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FilterByPeriodCopyWith<_$FilterByPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTransactionCopyWith<$Res> {
  factory _$$SearchTransactionCopyWith(
          _$SearchTransaction value, $Res Function(_$SearchTransaction) then) =
      __$$SearchTransactionCopyWithImpl<$Res>;
  $Res call({String searchKey});
}

/// @nodoc
class __$$SearchTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res>
    implements _$$SearchTransactionCopyWith<$Res> {
  __$$SearchTransactionCopyWithImpl(
      _$SearchTransaction _value, $Res Function(_$SearchTransaction) _then)
      : super(_value, (v) => _then(v as _$SearchTransaction));

  @override
  _$SearchTransaction get _value => super._value as _$SearchTransaction;

  @override
  $Res call({
    Object? searchKey = freezed,
  }) {
    return _then(_$SearchTransaction(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTransaction
    with DiagnosticableTreeMixin
    implements SearchTransaction {
  const _$SearchTransaction({required this.searchKey});

  @override
  final String searchKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsEvent.searchTransaction(searchKey: $searchKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsEvent.searchTransaction'))
      ..add(DiagnosticsProperty('searchKey', searchKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTransaction &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchKey));

  @JsonKey(ignore: true)
  @override
  _$$SearchTransactionCopyWith<_$SearchTransaction> get copyWith =>
      __$$SearchTransactionCopyWithImpl<_$SearchTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTransactions,
    required TResult Function(TransactionModel model) addTransaction,
    required TResult Function(int id, BuildContext context) deleteTransaction,
    required TResult Function(TransactionModel newModel) updateTransaction,
    required TResult Function(String period) filterTransactions,
    required TResult Function(String? newValue) changeFilterDDValue,
    required TResult Function(DateTime start, DateTime end) filterByPeriod,
    required TResult Function(String searchKey) searchTransaction,
  }) {
    return searchTransaction(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
  }) {
    return searchTransaction?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTransactions,
    TResult Function(TransactionModel model)? addTransaction,
    TResult Function(int id, BuildContext context)? deleteTransaction,
    TResult Function(TransactionModel newModel)? updateTransaction,
    TResult Function(String period)? filterTransactions,
    TResult Function(String? newValue)? changeFilterDDValue,
    TResult Function(DateTime start, DateTime end)? filterByPeriod,
    TResult Function(String searchKey)? searchTransaction,
    required TResult orElse(),
  }) {
    if (searchTransaction != null) {
      return searchTransaction(searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllTransactions value) getAllTransactions,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(DeleteTransaction value) deleteTransaction,
    required TResult Function(UpdateTransaction value) updateTransaction,
    required TResult Function(FilterTransactions value) filterTransactions,
    required TResult Function(ChangeFilterDDValue value) changeFilterDDValue,
    required TResult Function(FilterByPeriod value) filterByPeriod,
    required TResult Function(SearchTransaction value) searchTransaction,
  }) {
    return searchTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
  }) {
    return searchTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllTransactions value)? getAllTransactions,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(DeleteTransaction value)? deleteTransaction,
    TResult Function(UpdateTransaction value)? updateTransaction,
    TResult Function(FilterTransactions value)? filterTransactions,
    TResult Function(ChangeFilterDDValue value)? changeFilterDDValue,
    TResult Function(FilterByPeriod value)? filterByPeriod,
    TResult Function(SearchTransaction value)? searchTransaction,
    required TResult orElse(),
  }) {
    if (searchTransaction != null) {
      return searchTransaction(this);
    }
    return orElse();
  }
}

abstract class SearchTransaction implements TransactionsEvent {
  const factory SearchTransaction({required final String searchKey}) =
      _$SearchTransaction;

  String get searchKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchTransactionCopyWith<_$SearchTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionsState {
  List<TransactionModel> get transactionsList =>
      throw _privateConstructorUsedError;
  List<TransactionModel> get filteredList => throw _privateConstructorUsedError;
  AccountModel get account => throw _privateConstructorUsedError;
  String? get filterDropdownValue => throw _privateConstructorUsedError;
  bool get showFilterList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {List<TransactionModel> transactionsList,
      List<TransactionModel> filteredList,
      AccountModel account,
      String? filterDropdownValue,
      bool showFilterList});
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  final TransactionsState _value;
  // ignore: unused_field
  final $Res Function(TransactionsState) _then;

  @override
  $Res call({
    Object? transactionsList = freezed,
    Object? filteredList = freezed,
    Object? account = freezed,
    Object? filterDropdownValue = freezed,
    Object? showFilterList = freezed,
  }) {
    return _then(_value.copyWith(
      transactionsList: transactionsList == freezed
          ? _value.transactionsList
          : transactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filteredList: filteredList == freezed
          ? _value.filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      filterDropdownValue: filterDropdownValue == freezed
          ? _value.filterDropdownValue
          : filterDropdownValue // ignore: cast_nullable_to_non_nullable
              as String?,
      showFilterList: showFilterList == freezed
          ? _value.showFilterList
          : showFilterList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionsStateCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$$_TransactionsStateCopyWith(_$_TransactionsState value,
          $Res Function(_$_TransactionsState) then) =
      __$$_TransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TransactionModel> transactionsList,
      List<TransactionModel> filteredList,
      AccountModel account,
      String? filterDropdownValue,
      bool showFilterList});
}

/// @nodoc
class __$$_TransactionsStateCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res>
    implements _$$_TransactionsStateCopyWith<$Res> {
  __$$_TransactionsStateCopyWithImpl(
      _$_TransactionsState _value, $Res Function(_$_TransactionsState) _then)
      : super(_value, (v) => _then(v as _$_TransactionsState));

  @override
  _$_TransactionsState get _value => super._value as _$_TransactionsState;

  @override
  $Res call({
    Object? transactionsList = freezed,
    Object? filteredList = freezed,
    Object? account = freezed,
    Object? filterDropdownValue = freezed,
    Object? showFilterList = freezed,
  }) {
    return _then(_$_TransactionsState(
      transactionsList: transactionsList == freezed
          ? _value._transactionsList
          : transactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      filteredList: filteredList == freezed
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      filterDropdownValue: filterDropdownValue == freezed
          ? _value.filterDropdownValue
          : filterDropdownValue // ignore: cast_nullable_to_non_nullable
              as String?,
      showFilterList: showFilterList == freezed
          ? _value.showFilterList
          : showFilterList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TransactionsState
    with DiagnosticableTreeMixin
    implements _TransactionsState {
  const _$_TransactionsState(
      {required final List<TransactionModel> transactionsList,
      required final List<TransactionModel> filteredList,
      required this.account,
      required this.filterDropdownValue,
      required this.showFilterList})
      : _transactionsList = transactionsList,
        _filteredList = filteredList;

  final List<TransactionModel> _transactionsList;
  @override
  List<TransactionModel> get transactionsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsList);
  }

  final List<TransactionModel> _filteredList;
  @override
  List<TransactionModel> get filteredList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  @override
  final AccountModel account;
  @override
  final String? filterDropdownValue;
  @override
  final bool showFilterList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionsState(transactionsList: $transactionsList, filteredList: $filteredList, account: $account, filterDropdownValue: $filterDropdownValue, showFilterList: $showFilterList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionsState'))
      ..add(DiagnosticsProperty('transactionsList', transactionsList))
      ..add(DiagnosticsProperty('filteredList', filteredList))
      ..add(DiagnosticsProperty('account', account))
      ..add(DiagnosticsProperty('filterDropdownValue', filterDropdownValue))
      ..add(DiagnosticsProperty('showFilterList', showFilterList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsState &&
            const DeepCollectionEquality()
                .equals(other._transactionsList, _transactionsList) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality()
                .equals(other.filterDropdownValue, filterDropdownValue) &&
            const DeepCollectionEquality()
                .equals(other.showFilterList, showFilterList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactionsList),
      const DeepCollectionEquality().hash(_filteredList),
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(filterDropdownValue),
      const DeepCollectionEquality().hash(showFilterList));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      __$$_TransactionsStateCopyWithImpl<_$_TransactionsState>(
          this, _$identity);
}

abstract class _TransactionsState implements TransactionsState {
  const factory _TransactionsState(
      {required final List<TransactionModel> transactionsList,
      required final List<TransactionModel> filteredList,
      required final AccountModel account,
      required final String? filterDropdownValue,
      required final bool showFilterList}) = _$_TransactionsState;

  @override
  List<TransactionModel> get transactionsList =>
      throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get filteredList => throw _privateConstructorUsedError;
  @override
  AccountModel get account => throw _privateConstructorUsedError;
  @override
  String? get filterDropdownValue => throw _privateConstructorUsedError;
  @override
  bool get showFilterList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
