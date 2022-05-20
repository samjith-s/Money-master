// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'allrounder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllrounderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) navigate,
    required TResult Function(bool visibility) changeDateHintvisibility,
    required TResult Function(bool visibility) changeSearchBarVisibility,
    required TResult Function(bool isNotificationOn) turnOnNotification,
    required TResult Function(bool isApplockenabled) turnOnApplock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Navigate value) navigate,
    required TResult Function(ChangeDateHintvisibility value)
        changeDateHintvisibility,
    required TResult Function(ChangeSearchBarVisibility value)
        changeSearchBarVisibility,
    required TResult Function(TurnOnNotification value) turnOnNotification,
    required TResult Function(TurnOnApplock value) turnOnApplock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllrounderEventCopyWith<$Res> {
  factory $AllrounderEventCopyWith(
          AllrounderEvent value, $Res Function(AllrounderEvent) then) =
      _$AllrounderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllrounderEventCopyWithImpl<$Res>
    implements $AllrounderEventCopyWith<$Res> {
  _$AllrounderEventCopyWithImpl(this._value, this._then);

  final AllrounderEvent _value;
  // ignore: unused_field
  final $Res Function(AllrounderEvent) _then;
}

/// @nodoc
abstract class _$$NavigateCopyWith<$Res> {
  factory _$$NavigateCopyWith(
          _$Navigate value, $Res Function(_$Navigate) then) =
      __$$NavigateCopyWithImpl<$Res>;
  $Res call({int pageIndex});
}

/// @nodoc
class __$$NavigateCopyWithImpl<$Res> extends _$AllrounderEventCopyWithImpl<$Res>
    implements _$$NavigateCopyWith<$Res> {
  __$$NavigateCopyWithImpl(_$Navigate _value, $Res Function(_$Navigate) _then)
      : super(_value, (v) => _then(v as _$Navigate));

  @override
  _$Navigate get _value => super._value as _$Navigate;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(_$Navigate(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Navigate implements Navigate {
  const _$Navigate({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'AllrounderEvent.navigate(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Navigate &&
            const DeepCollectionEquality().equals(other.pageIndex, pageIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pageIndex));

  @JsonKey(ignore: true)
  @override
  _$$NavigateCopyWith<_$Navigate> get copyWith =>
      __$$NavigateCopyWithImpl<_$Navigate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) navigate,
    required TResult Function(bool visibility) changeDateHintvisibility,
    required TResult Function(bool visibility) changeSearchBarVisibility,
    required TResult Function(bool isNotificationOn) turnOnNotification,
    required TResult Function(bool isApplockenabled) turnOnApplock,
  }) {
    return navigate(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
  }) {
    return navigate?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Navigate value) navigate,
    required TResult Function(ChangeDateHintvisibility value)
        changeDateHintvisibility,
    required TResult Function(ChangeSearchBarVisibility value)
        changeSearchBarVisibility,
    required TResult Function(TurnOnNotification value) turnOnNotification,
    required TResult Function(TurnOnApplock value) turnOnApplock,
  }) {
    return navigate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
  }) {
    return navigate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (navigate != null) {
      return navigate(this);
    }
    return orElse();
  }
}

abstract class Navigate implements AllrounderEvent {
  const factory Navigate({required final int pageIndex}) = _$Navigate;

  int get pageIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigateCopyWith<_$Navigate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDateHintvisibilityCopyWith<$Res> {
  factory _$$ChangeDateHintvisibilityCopyWith(_$ChangeDateHintvisibility value,
          $Res Function(_$ChangeDateHintvisibility) then) =
      __$$ChangeDateHintvisibilityCopyWithImpl<$Res>;
  $Res call({bool visibility});
}

/// @nodoc
class __$$ChangeDateHintvisibilityCopyWithImpl<$Res>
    extends _$AllrounderEventCopyWithImpl<$Res>
    implements _$$ChangeDateHintvisibilityCopyWith<$Res> {
  __$$ChangeDateHintvisibilityCopyWithImpl(_$ChangeDateHintvisibility _value,
      $Res Function(_$ChangeDateHintvisibility) _then)
      : super(_value, (v) => _then(v as _$ChangeDateHintvisibility));

  @override
  _$ChangeDateHintvisibility get _value =>
      super._value as _$ChangeDateHintvisibility;

  @override
  $Res call({
    Object? visibility = freezed,
  }) {
    return _then(_$ChangeDateHintvisibility(
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeDateHintvisibility implements ChangeDateHintvisibility {
  const _$ChangeDateHintvisibility({required this.visibility});

  @override
  final bool visibility;

  @override
  String toString() {
    return 'AllrounderEvent.changeDateHintvisibility(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDateHintvisibility &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(visibility));

  @JsonKey(ignore: true)
  @override
  _$$ChangeDateHintvisibilityCopyWith<_$ChangeDateHintvisibility>
      get copyWith =>
          __$$ChangeDateHintvisibilityCopyWithImpl<_$ChangeDateHintvisibility>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) navigate,
    required TResult Function(bool visibility) changeDateHintvisibility,
    required TResult Function(bool visibility) changeSearchBarVisibility,
    required TResult Function(bool isNotificationOn) turnOnNotification,
    required TResult Function(bool isApplockenabled) turnOnApplock,
  }) {
    return changeDateHintvisibility(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
  }) {
    return changeDateHintvisibility?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (changeDateHintvisibility != null) {
      return changeDateHintvisibility(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Navigate value) navigate,
    required TResult Function(ChangeDateHintvisibility value)
        changeDateHintvisibility,
    required TResult Function(ChangeSearchBarVisibility value)
        changeSearchBarVisibility,
    required TResult Function(TurnOnNotification value) turnOnNotification,
    required TResult Function(TurnOnApplock value) turnOnApplock,
  }) {
    return changeDateHintvisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
  }) {
    return changeDateHintvisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (changeDateHintvisibility != null) {
      return changeDateHintvisibility(this);
    }
    return orElse();
  }
}

abstract class ChangeDateHintvisibility implements AllrounderEvent {
  const factory ChangeDateHintvisibility({required final bool visibility}) =
      _$ChangeDateHintvisibility;

  bool get visibility => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeDateHintvisibilityCopyWith<_$ChangeDateHintvisibility>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSearchBarVisibilityCopyWith<$Res> {
  factory _$$ChangeSearchBarVisibilityCopyWith(
          _$ChangeSearchBarVisibility value,
          $Res Function(_$ChangeSearchBarVisibility) then) =
      __$$ChangeSearchBarVisibilityCopyWithImpl<$Res>;
  $Res call({bool visibility});
}

/// @nodoc
class __$$ChangeSearchBarVisibilityCopyWithImpl<$Res>
    extends _$AllrounderEventCopyWithImpl<$Res>
    implements _$$ChangeSearchBarVisibilityCopyWith<$Res> {
  __$$ChangeSearchBarVisibilityCopyWithImpl(_$ChangeSearchBarVisibility _value,
      $Res Function(_$ChangeSearchBarVisibility) _then)
      : super(_value, (v) => _then(v as _$ChangeSearchBarVisibility));

  @override
  _$ChangeSearchBarVisibility get _value =>
      super._value as _$ChangeSearchBarVisibility;

  @override
  $Res call({
    Object? visibility = freezed,
  }) {
    return _then(_$ChangeSearchBarVisibility(
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeSearchBarVisibility implements ChangeSearchBarVisibility {
  const _$ChangeSearchBarVisibility({required this.visibility});

  @override
  final bool visibility;

  @override
  String toString() {
    return 'AllrounderEvent.changeSearchBarVisibility(visibility: $visibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSearchBarVisibility &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(visibility));

  @JsonKey(ignore: true)
  @override
  _$$ChangeSearchBarVisibilityCopyWith<_$ChangeSearchBarVisibility>
      get copyWith => __$$ChangeSearchBarVisibilityCopyWithImpl<
          _$ChangeSearchBarVisibility>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) navigate,
    required TResult Function(bool visibility) changeDateHintvisibility,
    required TResult Function(bool visibility) changeSearchBarVisibility,
    required TResult Function(bool isNotificationOn) turnOnNotification,
    required TResult Function(bool isApplockenabled) turnOnApplock,
  }) {
    return changeSearchBarVisibility(visibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
  }) {
    return changeSearchBarVisibility?.call(visibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (changeSearchBarVisibility != null) {
      return changeSearchBarVisibility(visibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Navigate value) navigate,
    required TResult Function(ChangeDateHintvisibility value)
        changeDateHintvisibility,
    required TResult Function(ChangeSearchBarVisibility value)
        changeSearchBarVisibility,
    required TResult Function(TurnOnNotification value) turnOnNotification,
    required TResult Function(TurnOnApplock value) turnOnApplock,
  }) {
    return changeSearchBarVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
  }) {
    return changeSearchBarVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (changeSearchBarVisibility != null) {
      return changeSearchBarVisibility(this);
    }
    return orElse();
  }
}

abstract class ChangeSearchBarVisibility implements AllrounderEvent {
  const factory ChangeSearchBarVisibility({required final bool visibility}) =
      _$ChangeSearchBarVisibility;

  bool get visibility => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangeSearchBarVisibilityCopyWith<_$ChangeSearchBarVisibility>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TurnOnNotificationCopyWith<$Res> {
  factory _$$TurnOnNotificationCopyWith(_$TurnOnNotification value,
          $Res Function(_$TurnOnNotification) then) =
      __$$TurnOnNotificationCopyWithImpl<$Res>;
  $Res call({bool isNotificationOn});
}

/// @nodoc
class __$$TurnOnNotificationCopyWithImpl<$Res>
    extends _$AllrounderEventCopyWithImpl<$Res>
    implements _$$TurnOnNotificationCopyWith<$Res> {
  __$$TurnOnNotificationCopyWithImpl(
      _$TurnOnNotification _value, $Res Function(_$TurnOnNotification) _then)
      : super(_value, (v) => _then(v as _$TurnOnNotification));

  @override
  _$TurnOnNotification get _value => super._value as _$TurnOnNotification;

  @override
  $Res call({
    Object? isNotificationOn = freezed,
  }) {
    return _then(_$TurnOnNotification(
      isNotificationOn: isNotificationOn == freezed
          ? _value.isNotificationOn
          : isNotificationOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TurnOnNotification implements TurnOnNotification {
  const _$TurnOnNotification({required this.isNotificationOn});

  @override
  final bool isNotificationOn;

  @override
  String toString() {
    return 'AllrounderEvent.turnOnNotification(isNotificationOn: $isNotificationOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnOnNotification &&
            const DeepCollectionEquality()
                .equals(other.isNotificationOn, isNotificationOn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isNotificationOn));

  @JsonKey(ignore: true)
  @override
  _$$TurnOnNotificationCopyWith<_$TurnOnNotification> get copyWith =>
      __$$TurnOnNotificationCopyWithImpl<_$TurnOnNotification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) navigate,
    required TResult Function(bool visibility) changeDateHintvisibility,
    required TResult Function(bool visibility) changeSearchBarVisibility,
    required TResult Function(bool isNotificationOn) turnOnNotification,
    required TResult Function(bool isApplockenabled) turnOnApplock,
  }) {
    return turnOnNotification(isNotificationOn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
  }) {
    return turnOnNotification?.call(isNotificationOn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (turnOnNotification != null) {
      return turnOnNotification(isNotificationOn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Navigate value) navigate,
    required TResult Function(ChangeDateHintvisibility value)
        changeDateHintvisibility,
    required TResult Function(ChangeSearchBarVisibility value)
        changeSearchBarVisibility,
    required TResult Function(TurnOnNotification value) turnOnNotification,
    required TResult Function(TurnOnApplock value) turnOnApplock,
  }) {
    return turnOnNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
  }) {
    return turnOnNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (turnOnNotification != null) {
      return turnOnNotification(this);
    }
    return orElse();
  }
}

abstract class TurnOnNotification implements AllrounderEvent {
  const factory TurnOnNotification({required final bool isNotificationOn}) =
      _$TurnOnNotification;

  bool get isNotificationOn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TurnOnNotificationCopyWith<_$TurnOnNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TurnOnApplockCopyWith<$Res> {
  factory _$$TurnOnApplockCopyWith(
          _$TurnOnApplock value, $Res Function(_$TurnOnApplock) then) =
      __$$TurnOnApplockCopyWithImpl<$Res>;
  $Res call({bool isApplockenabled});
}

/// @nodoc
class __$$TurnOnApplockCopyWithImpl<$Res>
    extends _$AllrounderEventCopyWithImpl<$Res>
    implements _$$TurnOnApplockCopyWith<$Res> {
  __$$TurnOnApplockCopyWithImpl(
      _$TurnOnApplock _value, $Res Function(_$TurnOnApplock) _then)
      : super(_value, (v) => _then(v as _$TurnOnApplock));

  @override
  _$TurnOnApplock get _value => super._value as _$TurnOnApplock;

  @override
  $Res call({
    Object? isApplockenabled = freezed,
  }) {
    return _then(_$TurnOnApplock(
      isApplockenabled: isApplockenabled == freezed
          ? _value.isApplockenabled
          : isApplockenabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TurnOnApplock implements TurnOnApplock {
  const _$TurnOnApplock({required this.isApplockenabled});

  @override
  final bool isApplockenabled;

  @override
  String toString() {
    return 'AllrounderEvent.turnOnApplock(isApplockenabled: $isApplockenabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnOnApplock &&
            const DeepCollectionEquality()
                .equals(other.isApplockenabled, isApplockenabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isApplockenabled));

  @JsonKey(ignore: true)
  @override
  _$$TurnOnApplockCopyWith<_$TurnOnApplock> get copyWith =>
      __$$TurnOnApplockCopyWithImpl<_$TurnOnApplock>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) navigate,
    required TResult Function(bool visibility) changeDateHintvisibility,
    required TResult Function(bool visibility) changeSearchBarVisibility,
    required TResult Function(bool isNotificationOn) turnOnNotification,
    required TResult Function(bool isApplockenabled) turnOnApplock,
  }) {
    return turnOnApplock(isApplockenabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
  }) {
    return turnOnApplock?.call(isApplockenabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? navigate,
    TResult Function(bool visibility)? changeDateHintvisibility,
    TResult Function(bool visibility)? changeSearchBarVisibility,
    TResult Function(bool isNotificationOn)? turnOnNotification,
    TResult Function(bool isApplockenabled)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (turnOnApplock != null) {
      return turnOnApplock(isApplockenabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Navigate value) navigate,
    required TResult Function(ChangeDateHintvisibility value)
        changeDateHintvisibility,
    required TResult Function(ChangeSearchBarVisibility value)
        changeSearchBarVisibility,
    required TResult Function(TurnOnNotification value) turnOnNotification,
    required TResult Function(TurnOnApplock value) turnOnApplock,
  }) {
    return turnOnApplock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
  }) {
    return turnOnApplock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Navigate value)? navigate,
    TResult Function(ChangeDateHintvisibility value)? changeDateHintvisibility,
    TResult Function(ChangeSearchBarVisibility value)?
        changeSearchBarVisibility,
    TResult Function(TurnOnNotification value)? turnOnNotification,
    TResult Function(TurnOnApplock value)? turnOnApplock,
    required TResult orElse(),
  }) {
    if (turnOnApplock != null) {
      return turnOnApplock(this);
    }
    return orElse();
  }
}

abstract class TurnOnApplock implements AllrounderEvent {
  const factory TurnOnApplock({required final bool isApplockenabled}) =
      _$TurnOnApplock;

  bool get isApplockenabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TurnOnApplockCopyWith<_$TurnOnApplock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllrounderState {
  bool get showHomeScreenSearchBar => throw _privateConstructorUsedError;
  bool get showHomeDatePickerHint => throw _privateConstructorUsedError;
  int get bottomNavIndex => throw _privateConstructorUsedError;
  bool get isNotificationOn => throw _privateConstructorUsedError;
  bool get isApplockenabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllrounderStateCopyWith<AllrounderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllrounderStateCopyWith<$Res> {
  factory $AllrounderStateCopyWith(
          AllrounderState value, $Res Function(AllrounderState) then) =
      _$AllrounderStateCopyWithImpl<$Res>;
  $Res call(
      {bool showHomeScreenSearchBar,
      bool showHomeDatePickerHint,
      int bottomNavIndex,
      bool isNotificationOn,
      bool isApplockenabled});
}

/// @nodoc
class _$AllrounderStateCopyWithImpl<$Res>
    implements $AllrounderStateCopyWith<$Res> {
  _$AllrounderStateCopyWithImpl(this._value, this._then);

  final AllrounderState _value;
  // ignore: unused_field
  final $Res Function(AllrounderState) _then;

  @override
  $Res call({
    Object? showHomeScreenSearchBar = freezed,
    Object? showHomeDatePickerHint = freezed,
    Object? bottomNavIndex = freezed,
    Object? isNotificationOn = freezed,
    Object? isApplockenabled = freezed,
  }) {
    return _then(_value.copyWith(
      showHomeScreenSearchBar: showHomeScreenSearchBar == freezed
          ? _value.showHomeScreenSearchBar
          : showHomeScreenSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      showHomeDatePickerHint: showHomeDatePickerHint == freezed
          ? _value.showHomeDatePickerHint
          : showHomeDatePickerHint // ignore: cast_nullable_to_non_nullable
              as bool,
      bottomNavIndex: bottomNavIndex == freezed
          ? _value.bottomNavIndex
          : bottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isNotificationOn: isNotificationOn == freezed
          ? _value.isNotificationOn
          : isNotificationOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isApplockenabled: isApplockenabled == freezed
          ? _value.isApplockenabled
          : isApplockenabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AllrounderStateCopyWith<$Res>
    implements $AllrounderStateCopyWith<$Res> {
  factory _$$_AllrounderStateCopyWith(
          _$_AllrounderState value, $Res Function(_$_AllrounderState) then) =
      __$$_AllrounderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showHomeScreenSearchBar,
      bool showHomeDatePickerHint,
      int bottomNavIndex,
      bool isNotificationOn,
      bool isApplockenabled});
}

/// @nodoc
class __$$_AllrounderStateCopyWithImpl<$Res>
    extends _$AllrounderStateCopyWithImpl<$Res>
    implements _$$_AllrounderStateCopyWith<$Res> {
  __$$_AllrounderStateCopyWithImpl(
      _$_AllrounderState _value, $Res Function(_$_AllrounderState) _then)
      : super(_value, (v) => _then(v as _$_AllrounderState));

  @override
  _$_AllrounderState get _value => super._value as _$_AllrounderState;

  @override
  $Res call({
    Object? showHomeScreenSearchBar = freezed,
    Object? showHomeDatePickerHint = freezed,
    Object? bottomNavIndex = freezed,
    Object? isNotificationOn = freezed,
    Object? isApplockenabled = freezed,
  }) {
    return _then(_$_AllrounderState(
      showHomeScreenSearchBar: showHomeScreenSearchBar == freezed
          ? _value.showHomeScreenSearchBar
          : showHomeScreenSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      showHomeDatePickerHint: showHomeDatePickerHint == freezed
          ? _value.showHomeDatePickerHint
          : showHomeDatePickerHint // ignore: cast_nullable_to_non_nullable
              as bool,
      bottomNavIndex: bottomNavIndex == freezed
          ? _value.bottomNavIndex
          : bottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isNotificationOn: isNotificationOn == freezed
          ? _value.isNotificationOn
          : isNotificationOn // ignore: cast_nullable_to_non_nullable
              as bool,
      isApplockenabled: isApplockenabled == freezed
          ? _value.isApplockenabled
          : isApplockenabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AllrounderState implements _AllrounderState {
  const _$_AllrounderState(
      {required this.showHomeScreenSearchBar,
      required this.showHomeDatePickerHint,
      required this.bottomNavIndex,
      required this.isNotificationOn,
      required this.isApplockenabled});

  @override
  final bool showHomeScreenSearchBar;
  @override
  final bool showHomeDatePickerHint;
  @override
  final int bottomNavIndex;
  @override
  final bool isNotificationOn;
  @override
  final bool isApplockenabled;

  @override
  String toString() {
    return 'AllrounderState(showHomeScreenSearchBar: $showHomeScreenSearchBar, showHomeDatePickerHint: $showHomeDatePickerHint, bottomNavIndex: $bottomNavIndex, isNotificationOn: $isNotificationOn, isApplockenabled: $isApplockenabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllrounderState &&
            const DeepCollectionEquality().equals(
                other.showHomeScreenSearchBar, showHomeScreenSearchBar) &&
            const DeepCollectionEquality()
                .equals(other.showHomeDatePickerHint, showHomeDatePickerHint) &&
            const DeepCollectionEquality()
                .equals(other.bottomNavIndex, bottomNavIndex) &&
            const DeepCollectionEquality()
                .equals(other.isNotificationOn, isNotificationOn) &&
            const DeepCollectionEquality()
                .equals(other.isApplockenabled, isApplockenabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showHomeScreenSearchBar),
      const DeepCollectionEquality().hash(showHomeDatePickerHint),
      const DeepCollectionEquality().hash(bottomNavIndex),
      const DeepCollectionEquality().hash(isNotificationOn),
      const DeepCollectionEquality().hash(isApplockenabled));

  @JsonKey(ignore: true)
  @override
  _$$_AllrounderStateCopyWith<_$_AllrounderState> get copyWith =>
      __$$_AllrounderStateCopyWithImpl<_$_AllrounderState>(this, _$identity);
}

abstract class _AllrounderState implements AllrounderState {
  const factory _AllrounderState(
      {required final bool showHomeScreenSearchBar,
      required final bool showHomeDatePickerHint,
      required final int bottomNavIndex,
      required final bool isNotificationOn,
      required final bool isApplockenabled}) = _$_AllrounderState;

  @override
  bool get showHomeScreenSearchBar => throw _privateConstructorUsedError;
  @override
  bool get showHomeDatePickerHint => throw _privateConstructorUsedError;
  @override
  int get bottomNavIndex => throw _privateConstructorUsedError;
  @override
  bool get isNotificationOn => throw _privateConstructorUsedError;
  @override
  bool get isApplockenabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AllrounderStateCopyWith<_$_AllrounderState> get copyWith =>
      throw _privateConstructorUsedError;
}
