// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogDetailState {
  BlocAction? get action => throw _privateConstructorUsedError;
  Blog? get blogDetail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogDetailStateCopyWith<BlogDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDetailStateCopyWith<$Res> {
  factory $BlogDetailStateCopyWith(
          BlogDetailState value, $Res Function(BlogDetailState) then) =
      _$BlogDetailStateCopyWithImpl<$Res, BlogDetailState>;
  @useResult
  $Res call({BlocAction? action, Blog? blogDetail});
}

/// @nodoc
class _$BlogDetailStateCopyWithImpl<$Res, $Val extends BlogDetailState>
    implements $BlogDetailStateCopyWith<$Res> {
  _$BlogDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? blogDetail = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      blogDetail: freezed == blogDetail
          ? _value.blogDetail
          : blogDetail // ignore: cast_nullable_to_non_nullable
              as Blog?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogDetailStateImplCopyWith<$Res>
    implements $BlogDetailStateCopyWith<$Res> {
  factory _$$BlogDetailStateImplCopyWith(_$BlogDetailStateImpl value,
          $Res Function(_$BlogDetailStateImpl) then) =
      __$$BlogDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocAction? action, Blog? blogDetail});
}

/// @nodoc
class __$$BlogDetailStateImplCopyWithImpl<$Res>
    extends _$BlogDetailStateCopyWithImpl<$Res, _$BlogDetailStateImpl>
    implements _$$BlogDetailStateImplCopyWith<$Res> {
  __$$BlogDetailStateImplCopyWithImpl(
      _$BlogDetailStateImpl _value, $Res Function(_$BlogDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? blogDetail = freezed,
  }) {
    return _then(_$BlogDetailStateImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      blogDetail: freezed == blogDetail
          ? _value.blogDetail
          : blogDetail // ignore: cast_nullable_to_non_nullable
              as Blog?,
    ));
  }
}

/// @nodoc

class _$BlogDetailStateImpl implements _BlogDetailState {
  _$BlogDetailStateImpl({this.action, this.blogDetail});

  @override
  final BlocAction? action;
  @override
  final Blog? blogDetail;

  @override
  String toString() {
    return 'BlogDetailState(action: $action, blogDetail: $blogDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogDetailStateImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.blogDetail, blogDetail) ||
                other.blogDetail == blogDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, blogDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogDetailStateImplCopyWith<_$BlogDetailStateImpl> get copyWith =>
      __$$BlogDetailStateImplCopyWithImpl<_$BlogDetailStateImpl>(
          this, _$identity);
}

abstract class _BlogDetailState implements BlogDetailState {
  factory _BlogDetailState({final BlocAction? action, final Blog? blogDetail}) =
      _$BlogDetailStateImpl;

  @override
  BlocAction? get action;
  @override
  Blog? get blogDetail;
  @override
  @JsonKey(ignore: true)
  _$$BlogDetailStateImplCopyWith<_$BlogDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlogDetailEvent {
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
abstract class $BlogDetailEventCopyWith<$Res> {
  factory $BlogDetailEventCopyWith(
          BlogDetailEvent value, $Res Function(BlogDetailEvent) then) =
      _$BlogDetailEventCopyWithImpl<$Res, BlogDetailEvent>;
}

/// @nodoc
class _$BlogDetailEventCopyWithImpl<$Res, $Val extends BlogDetailEvent>
    implements $BlogDetailEventCopyWith<$Res> {
  _$BlogDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$BlogDetailEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'BlogDetailEvent.init()';
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

abstract class Init implements BlogDetailEvent {
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
    extends _$BlogDetailEventCopyWithImpl<$Res, _$BackClickedImpl>
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
    return 'BlogDetailEvent.backClicked()';
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

abstract class BackClicked implements BlogDetailEvent {
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
    extends _$BlogDetailEventCopyWithImpl<$Res, _$LinkClickedImpl>
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
    return 'BlogDetailEvent.linkClicked()';
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

abstract class LinkClicked implements BlogDetailEvent {
  const factory LinkClicked() = _$LinkClickedImpl;
}
