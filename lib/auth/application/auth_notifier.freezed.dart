// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unathenticated,
    required TResult Function() athenticated,
    required TResult Function(AuthFailure faliure) faliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unathenticated,
    TResult? Function()? athenticated,
    TResult? Function(AuthFailure faliure)? faliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unathenticated,
    TResult Function()? athenticated,
    TResult Function(AuthFailure faliure)? faliure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unathenticated value) unathenticated,
    required TResult Function(_Athenticated value) athenticated,
    required TResult Function(_Faliure value) faliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unathenticated value)? unathenticated,
    TResult? Function(_Athenticated value)? athenticated,
    TResult? Function(_Faliure value)? faliure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unathenticated value)? unathenticated,
    TResult Function(_Athenticated value)? athenticated,
    TResult Function(_Faliure value)? faliure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unathenticated,
    required TResult Function() athenticated,
    required TResult Function(AuthFailure faliure) faliure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unathenticated,
    TResult? Function()? athenticated,
    TResult? Function(AuthFailure faliure)? faliure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unathenticated,
    TResult Function()? athenticated,
    TResult Function(AuthFailure faliure)? faliure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unathenticated value) unathenticated,
    required TResult Function(_Athenticated value) athenticated,
    required TResult Function(_Faliure value) faliure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unathenticated value)? unathenticated,
    TResult? Function(_Athenticated value)? athenticated,
    TResult? Function(_Faliure value)? faliure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unathenticated value)? unathenticated,
    TResult Function(_Athenticated value)? athenticated,
    TResult Function(_Faliure value)? faliure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_UnathenticatedCopyWith<$Res> {
  factory _$$_UnathenticatedCopyWith(
          _$_Unathenticated value, $Res Function(_$_Unathenticated) then) =
      __$$_UnathenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnathenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unathenticated>
    implements _$$_UnathenticatedCopyWith<$Res> {
  __$$_UnathenticatedCopyWithImpl(
      _$_Unathenticated _value, $Res Function(_$_Unathenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unathenticated extends _Unathenticated {
  const _$_Unathenticated() : super._();

  @override
  String toString() {
    return 'AuthState.unathenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unathenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unathenticated,
    required TResult Function() athenticated,
    required TResult Function(AuthFailure faliure) faliure,
  }) {
    return unathenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unathenticated,
    TResult? Function()? athenticated,
    TResult? Function(AuthFailure faliure)? faliure,
  }) {
    return unathenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unathenticated,
    TResult Function()? athenticated,
    TResult Function(AuthFailure faliure)? faliure,
    required TResult orElse(),
  }) {
    if (unathenticated != null) {
      return unathenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unathenticated value) unathenticated,
    required TResult Function(_Athenticated value) athenticated,
    required TResult Function(_Faliure value) faliure,
  }) {
    return unathenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unathenticated value)? unathenticated,
    TResult? Function(_Athenticated value)? athenticated,
    TResult? Function(_Faliure value)? faliure,
  }) {
    return unathenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unathenticated value)? unathenticated,
    TResult Function(_Athenticated value)? athenticated,
    TResult Function(_Faliure value)? faliure,
    required TResult orElse(),
  }) {
    if (unathenticated != null) {
      return unathenticated(this);
    }
    return orElse();
  }
}

abstract class _Unathenticated extends AuthState {
  const factory _Unathenticated() = _$_Unathenticated;
  const _Unathenticated._() : super._();
}

/// @nodoc
abstract class _$$_AthenticatedCopyWith<$Res> {
  factory _$$_AthenticatedCopyWith(
          _$_Athenticated value, $Res Function(_$_Athenticated) then) =
      __$$_AthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Athenticated>
    implements _$$_AthenticatedCopyWith<$Res> {
  __$$_AthenticatedCopyWithImpl(
      _$_Athenticated _value, $Res Function(_$_Athenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Athenticated extends _Athenticated {
  const _$_Athenticated() : super._();

  @override
  String toString() {
    return 'AuthState.athenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Athenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unathenticated,
    required TResult Function() athenticated,
    required TResult Function(AuthFailure faliure) faliure,
  }) {
    return athenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unathenticated,
    TResult? Function()? athenticated,
    TResult? Function(AuthFailure faliure)? faliure,
  }) {
    return athenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unathenticated,
    TResult Function()? athenticated,
    TResult Function(AuthFailure faliure)? faliure,
    required TResult orElse(),
  }) {
    if (athenticated != null) {
      return athenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unathenticated value) unathenticated,
    required TResult Function(_Athenticated value) athenticated,
    required TResult Function(_Faliure value) faliure,
  }) {
    return athenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unathenticated value)? unathenticated,
    TResult? Function(_Athenticated value)? athenticated,
    TResult? Function(_Faliure value)? faliure,
  }) {
    return athenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unathenticated value)? unathenticated,
    TResult Function(_Athenticated value)? athenticated,
    TResult Function(_Faliure value)? faliure,
    required TResult orElse(),
  }) {
    if (athenticated != null) {
      return athenticated(this);
    }
    return orElse();
  }
}

abstract class _Athenticated extends AuthState {
  const factory _Athenticated() = _$_Athenticated;
  const _Athenticated._() : super._();
}

/// @nodoc
abstract class _$$_FaliureCopyWith<$Res> {
  factory _$$_FaliureCopyWith(
          _$_Faliure value, $Res Function(_$_Faliure) then) =
      __$$_FaliureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure faliure});

  $AuthFailureCopyWith<$Res> get faliure;
}

/// @nodoc
class __$$_FaliureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Faliure>
    implements _$$_FaliureCopyWith<$Res> {
  __$$_FaliureCopyWithImpl(_$_Faliure _value, $Res Function(_$_Faliure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faliure = null,
  }) {
    return _then(_$_Faliure(
      null == faliure
          ? _value.faliure
          : faliure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get faliure {
    return $AuthFailureCopyWith<$Res>(_value.faliure, (value) {
      return _then(_value.copyWith(faliure: value));
    });
  }
}

/// @nodoc

class _$_Faliure extends _Faliure {
  const _$_Faliure(this.faliure) : super._();

  @override
  final AuthFailure faliure;

  @override
  String toString() {
    return 'AuthState.faliure(faliure: $faliure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Faliure &&
            (identical(other.faliure, faliure) || other.faliure == faliure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faliure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaliureCopyWith<_$_Faliure> get copyWith =>
      __$$_FaliureCopyWithImpl<_$_Faliure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unathenticated,
    required TResult Function() athenticated,
    required TResult Function(AuthFailure faliure) faliure,
  }) {
    return faliure(this.faliure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unathenticated,
    TResult? Function()? athenticated,
    TResult? Function(AuthFailure faliure)? faliure,
  }) {
    return faliure?.call(this.faliure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unathenticated,
    TResult Function()? athenticated,
    TResult Function(AuthFailure faliure)? faliure,
    required TResult orElse(),
  }) {
    if (faliure != null) {
      return faliure(this.faliure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Unathenticated value) unathenticated,
    required TResult Function(_Athenticated value) athenticated,
    required TResult Function(_Faliure value) faliure,
  }) {
    return faliure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Unathenticated value)? unathenticated,
    TResult? Function(_Athenticated value)? athenticated,
    TResult? Function(_Faliure value)? faliure,
  }) {
    return faliure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Unathenticated value)? unathenticated,
    TResult Function(_Athenticated value)? athenticated,
    TResult Function(_Faliure value)? faliure,
    required TResult orElse(),
  }) {
    if (faliure != null) {
      return faliure(this);
    }
    return orElse();
  }
}

abstract class _Faliure extends AuthState {
  const factory _Faliure(final AuthFailure faliure) = _$_Faliure;
  const _Faliure._() : super._();

  AuthFailure get faliure;
  @JsonKey(ignore: true)
  _$$_FaliureCopyWith<_$_Faliure> get copyWith =>
      throw _privateConstructorUsedError;
}
