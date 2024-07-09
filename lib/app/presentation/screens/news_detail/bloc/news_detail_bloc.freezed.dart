// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsDetailState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsDetailStateCopyWith<NewsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailStateCopyWith<$Res> {
  factory $NewsDetailStateCopyWith(
          NewsDetailState value, $Res Function(NewsDetailState) then) =
      _$NewsDetailStateCopyWithImpl<$Res, NewsDetailState>;
  @useResult
  $Res call({BlocAction? action});
}

/// @nodoc
class _$NewsDetailStateCopyWithImpl<$Res, $Val extends NewsDetailState>
    implements $NewsDetailStateCopyWith<$Res> {
  _$NewsDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$NewsDetailStateImplCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$NewsDetailStateImplCopyWith(_$NewsDetailStateImpl value,
          $Res Function(_$NewsDetailStateImpl) then) =
      __$$NewsDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocAction? action});
}

/// @nodoc
class __$$NewsDetailStateImplCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$NewsDetailStateImpl>
    implements _$$NewsDetailStateImplCopyWith<$Res> {
  __$$NewsDetailStateImplCopyWithImpl(
      _$NewsDetailStateImpl _value, $Res Function(_$NewsDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$NewsDetailStateImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$NewsDetailStateImpl implements _NewsDetailState {
  _$NewsDetailStateImpl({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'NewsDetailState(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailStateImpl &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDetailStateImplCopyWith<_$NewsDetailStateImpl> get copyWith =>
      __$$NewsDetailStateImplCopyWithImpl<_$NewsDetailStateImpl>(
          this, _$identity);
}

abstract class _NewsDetailState implements NewsDetailState {
  factory _NewsDetailState({final BlocAction? action}) = _$NewsDetailStateImpl;

  @override
  BlocAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$NewsDetailStateImplCopyWith<_$NewsDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsDetailEvent {
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
abstract class $NewsDetailEventCopyWith<$Res> {
  factory $NewsDetailEventCopyWith(
          NewsDetailEvent value, $Res Function(NewsDetailEvent) then) =
      _$NewsDetailEventCopyWithImpl<$Res, NewsDetailEvent>;
}

/// @nodoc
class _$NewsDetailEventCopyWithImpl<$Res, $Val extends NewsDetailEvent>
    implements $NewsDetailEventCopyWith<$Res> {
  _$NewsDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$NewsDetailEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'NewsDetailEvent.init()';
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

abstract class Init implements NewsDetailEvent {
  const factory Init() = _$InitImpl;
}
