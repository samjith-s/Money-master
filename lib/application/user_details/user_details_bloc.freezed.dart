// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel model) addUser,
    required TResult Function(UserModel newModel) updateUser,
    required TResult Function() getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  final UserDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailsEvent) _then;
}

/// @nodoc
abstract class _$$AddUserCopyWith<$Res> {
  factory _$$AddUserCopyWith(_$AddUser value, $Res Function(_$AddUser) then) =
      __$$AddUserCopyWithImpl<$Res>;
  $Res call({UserModel model});
}

/// @nodoc
class __$$AddUserCopyWithImpl<$Res> extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$$AddUserCopyWith<$Res> {
  __$$AddUserCopyWithImpl(_$AddUser _value, $Res Function(_$AddUser) _then)
      : super(_value, (v) => _then(v as _$AddUser));

  @override
  _$AddUser get _value => super._value as _$AddUser;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AddUser(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AddUser implements AddUser {
  const _$AddUser({required this.model});

  @override
  final UserModel model;

  @override
  String toString() {
    return 'UserDetailsEvent.addUser(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUser &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$AddUserCopyWith<_$AddUser> get copyWith =>
      __$$AddUserCopyWithImpl<_$AddUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel model) addUser,
    required TResult Function(UserModel newModel) updateUser,
    required TResult Function() getUser,
  }) {
    return addUser(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
  }) {
    return addUser?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetUser value) getUser,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class AddUser implements UserDetailsEvent {
  const factory AddUser({required final UserModel model}) = _$AddUser;

  UserModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddUserCopyWith<_$AddUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserCopyWith<$Res> {
  factory _$$UpdateUserCopyWith(
          _$UpdateUser value, $Res Function(_$UpdateUser) then) =
      __$$UpdateUserCopyWithImpl<$Res>;
  $Res call({UserModel newModel});
}

/// @nodoc
class __$$UpdateUserCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$$UpdateUserCopyWith<$Res> {
  __$$UpdateUserCopyWithImpl(
      _$UpdateUser _value, $Res Function(_$UpdateUser) _then)
      : super(_value, (v) => _then(v as _$UpdateUser));

  @override
  _$UpdateUser get _value => super._value as _$UpdateUser;

  @override
  $Res call({
    Object? newModel = freezed,
  }) {
    return _then(_$UpdateUser(
      newModel: newModel == freezed
          ? _value.newModel
          : newModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UpdateUser implements UpdateUser {
  const _$UpdateUser({required this.newModel});

  @override
  final UserModel newModel;

  @override
  String toString() {
    return 'UserDetailsEvent.updateUser(newModel: $newModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUser &&
            const DeepCollectionEquality().equals(other.newModel, newModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newModel));

  @JsonKey(ignore: true)
  @override
  _$$UpdateUserCopyWith<_$UpdateUser> get copyWith =>
      __$$UpdateUserCopyWithImpl<_$UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel model) addUser,
    required TResult Function(UserModel newModel) updateUser,
    required TResult Function() getUser,
  }) {
    return updateUser(newModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
  }) {
    return updateUser?.call(newModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(newModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetUser value) getUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements UserDetailsEvent {
  const factory UpdateUser({required final UserModel newModel}) = _$UpdateUser;

  UserModel get newModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateUserCopyWith<_$UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserCopyWith<$Res> {
  factory _$$GetUserCopyWith(_$GetUser value, $Res Function(_$GetUser) then) =
      __$$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserCopyWithImpl<$Res> extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$$GetUserCopyWith<$Res> {
  __$$GetUserCopyWithImpl(_$GetUser _value, $Res Function(_$GetUser) _then)
      : super(_value, (v) => _then(v as _$GetUser));

  @override
  _$GetUser get _value => super._value as _$GetUser;
}

/// @nodoc

class _$GetUser implements GetUser {
  const _$GetUser();

  @override
  String toString() {
    return 'UserDetailsEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel model) addUser,
    required TResult Function(UserModel newModel) updateUser,
    required TResult Function() getUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel model)? addUser,
    TResult Function(UserModel newModel)? updateUser,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddUser value) addUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddUser value)? addUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements UserDetailsEvent {
  const factory GetUser() = _$GetUser;
}

/// @nodoc
mixin _$UserDetailsState {
  UserModel get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res>;
  $Res call({UserModel model});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  final UserDetailsState _value;
  // ignore: unused_field
  final $Res Function(UserDetailsState) _then;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDetailsStateCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$_UserDetailsStateCopyWith(
          _$_UserDetailsState value, $Res Function(_$_UserDetailsState) then) =
      __$$_UserDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({UserModel model});
}

/// @nodoc
class __$$_UserDetailsStateCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res>
    implements _$$_UserDetailsStateCopyWith<$Res> {
  __$$_UserDetailsStateCopyWithImpl(
      _$_UserDetailsState _value, $Res Function(_$_UserDetailsState) _then)
      : super(_value, (v) => _then(v as _$_UserDetailsState));

  @override
  _$_UserDetailsState get _value => super._value as _$_UserDetailsState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_UserDetailsState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_UserDetailsState implements _UserDetailsState {
  const _$_UserDetailsState({required this.model});

  @override
  final UserModel model;

  @override
  String toString() {
    return 'UserDetailsState(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailsState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailsStateCopyWith<_$_UserDetailsState> get copyWith =>
      __$$_UserDetailsStateCopyWithImpl<_$_UserDetailsState>(this, _$identity);
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState({required final UserModel model}) =
      _$_UserDetailsState;

  @override
  UserModel get model => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsStateCopyWith<_$_UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
