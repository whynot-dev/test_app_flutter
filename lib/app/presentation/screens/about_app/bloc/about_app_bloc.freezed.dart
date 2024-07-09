// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutAppState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AboutAppStateCopyWith<AboutAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutAppStateCopyWith<$Res> {
  factory $AboutAppStateCopyWith(
          AboutAppState value, $Res Function(AboutAppState) then) =
      _$AboutAppStateCopyWithImpl<$Res, AboutAppState>;
  @useResult
  $Res call({BlocAction? action});
}

/// @nodoc
class _$AboutAppStateCopyWithImpl<$Res, $Val extends AboutAppState>
    implements $AboutAppStateCopyWith<$Res> {
  _$AboutAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutAppStateImplCopyWith<$Res>
    implements $AboutAppStateCopyWith<$Res> {
  factory _$$AboutAppStateImplCopyWith(
          _$AboutAppStateImpl value, $Res Function(_$AboutAppStateImpl) then) =
      __$$AboutAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocAction? action});
}

/// @nodoc
class __$$AboutAppStateImplCopyWithImpl<$Res>
    extends _$AboutAppStateCopyWithImpl<$Res, _$AboutAppStateImpl>
    implements _$$AboutAppStateImplCopyWith<$Res> {
  __$$AboutAppStateImplCopyWithImpl(
      _$AboutAppStateImpl _value, $Res Function(_$AboutAppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$AboutAppStateImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$AboutAppStateImpl implements _AboutAppState {
  _$AboutAppStateImpl({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'AboutAppState(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutAppStateImpl &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutAppStateImplCopyWith<_$AboutAppStateImpl> get copyWith =>
      __$$AboutAppStateImplCopyWithImpl<_$AboutAppStateImpl>(this, _$identity);
}

abstract class _AboutAppState implements AboutAppState {
  factory _AboutAppState({final BlocAction? action}) = _$AboutAppStateImpl;

  @override
  BlocAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$AboutAppStateImplCopyWith<_$AboutAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AboutAppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutAppEventCopyWith<$Res> {
  factory $AboutAppEventCopyWith(
          AboutAppEvent value, $Res Function(AboutAppEvent) then) =
      _$AboutAppEventCopyWithImpl<$Res, AboutAppEvent>;
}

/// @nodoc
class _$AboutAppEventCopyWithImpl<$Res, $Val extends AboutAppEvent>
    implements $AboutAppEventCopyWith<$Res> {
  _$AboutAppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$AboutAppEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'AboutAppEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AboutAppEvent {
  const factory Init() = _$InitImpl;
}
