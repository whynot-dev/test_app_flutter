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
  News? get newsDetail => throw _privateConstructorUsedError;

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
  $Res call({BlocAction? action, News? newsDetail});
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
    Object? newsDetail = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      newsDetail: freezed == newsDetail
          ? _value.newsDetail
          : newsDetail // ignore: cast_nullable_to_non_nullable
              as News?,
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
  $Res call({BlocAction? action, News? newsDetail});
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
    Object? newsDetail = freezed,
  }) {
    return _then(_$NewsDetailStateImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      newsDetail: freezed == newsDetail
          ? _value.newsDetail
          : newsDetail // ignore: cast_nullable_to_non_nullable
              as News?,
    ));
  }
}

/// @nodoc

class _$NewsDetailStateImpl implements _NewsDetailState {
  _$NewsDetailStateImpl({this.action, this.newsDetail});

  @override
  final BlocAction? action;
  @override
  final News? newsDetail;

  @override
  String toString() {
    return 'NewsDetailState(action: $action, newsDetail: $newsDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailStateImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.newsDetail, newsDetail) ||
                other.newsDetail == newsDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, newsDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDetailStateImplCopyWith<_$NewsDetailStateImpl> get copyWith =>
      __$$NewsDetailStateImplCopyWithImpl<_$NewsDetailStateImpl>(
          this, _$identity);
}

abstract class _NewsDetailState implements NewsDetailState {
  factory _NewsDetailState({final BlocAction? action, final News? newsDetail}) =
      _$NewsDetailStateImpl;

  @override
  BlocAction? get action;
  @override
  News? get newsDetail;
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
    required TResult Function() backClicked,
    required TResult Function() linkClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? backClicked,
    TResult? Function()? linkClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? linkClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(LinkClicked value) linkClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(LinkClicked value)? linkClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(LinkClicked value)? linkClicked,
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
    required TResult Function() backClicked,
    required TResult Function() linkClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? backClicked,
    TResult? Function()? linkClicked,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? linkClicked,
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
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(LinkClicked value) linkClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(LinkClicked value)? linkClicked,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(LinkClicked value)? linkClicked,
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

/// @nodoc
abstract class _$$BackClickedImplCopyWith<$Res> {
  factory _$$BackClickedImplCopyWith(
          _$BackClickedImpl value, $Res Function(_$BackClickedImpl) then) =
      __$$BackClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackClickedImplCopyWithImpl<$Res>
    extends _$NewsDetailEventCopyWithImpl<$Res, _$BackClickedImpl>
    implements _$$BackClickedImplCopyWith<$Res> {
  __$$BackClickedImplCopyWithImpl(
      _$BackClickedImpl _value, $Res Function(_$BackClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackClickedImpl implements BackClicked {
  const _$BackClickedImpl();

  @override
  String toString() {
    return 'NewsDetailEvent.backClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() linkClicked,
  }) {
    return backClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? backClicked,
    TResult? Function()? linkClicked,
  }) {
    return backClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? linkClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(LinkClicked value) linkClicked,
  }) {
    return backClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(LinkClicked value)? linkClicked,
  }) {
    return backClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(LinkClicked value)? linkClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(this);
    }
    return orElse();
  }
}

abstract class BackClicked implements NewsDetailEvent {
  const factory BackClicked() = _$BackClickedImpl;
}

/// @nodoc
abstract class _$$LinkClickedImplCopyWith<$Res> {
  factory _$$LinkClickedImplCopyWith(
          _$LinkClickedImpl value, $Res Function(_$LinkClickedImpl) then) =
      __$$LinkClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LinkClickedImplCopyWithImpl<$Res>
    extends _$NewsDetailEventCopyWithImpl<$Res, _$LinkClickedImpl>
    implements _$$LinkClickedImplCopyWith<$Res> {
  __$$LinkClickedImplCopyWithImpl(
      _$LinkClickedImpl _value, $Res Function(_$LinkClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LinkClickedImpl implements LinkClicked {
  const _$LinkClickedImpl();

  @override
  String toString() {
    return 'NewsDetailEvent.linkClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LinkClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backClicked,
    required TResult Function() linkClicked,
  }) {
    return linkClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? backClicked,
    TResult? Function()? linkClicked,
  }) {
    return linkClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backClicked,
    TResult Function()? linkClicked,
    required TResult orElse(),
  }) {
    if (linkClicked != null) {
      return linkClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackClicked value) backClicked,
    required TResult Function(LinkClicked value) linkClicked,
  }) {
    return linkClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(BackClicked value)? backClicked,
    TResult? Function(LinkClicked value)? linkClicked,
  }) {
    return linkClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackClicked value)? backClicked,
    TResult Function(LinkClicked value)? linkClicked,
    required TResult orElse(),
  }) {
    if (linkClicked != null) {
      return linkClicked(this);
    }
    return orElse();
  }
}

abstract class LinkClicked implements NewsDetailEvent {
  const factory LinkClicked() = _$LinkClickedImpl;
}
