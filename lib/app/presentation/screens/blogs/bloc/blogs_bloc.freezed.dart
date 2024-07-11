// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogsState {
  BlocAction? get action => throw _privateConstructorUsedError;
  List<Blog> get blogs => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogsStateCopyWith<BlogsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsStateCopyWith<$Res> {
  factory $BlogsStateCopyWith(
          BlogsState value, $Res Function(BlogsState) then) =
      _$BlogsStateCopyWithImpl<$Res, BlogsState>;
  @useResult
  $Res call({BlocAction? action, List<Blog> blogs, String? searchText});
}

/// @nodoc
class _$BlogsStateCopyWithImpl<$Res, $Val extends BlogsState>
    implements $BlogsStateCopyWith<$Res> {
  _$BlogsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? blogs = null,
    Object? searchText = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      blogs: null == blogs
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogsStateImplCopyWith<$Res>
    implements $BlogsStateCopyWith<$Res> {
  factory _$$BlogsStateImplCopyWith(
          _$BlogsStateImpl value, $Res Function(_$BlogsStateImpl) then) =
      __$$BlogsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocAction? action, List<Blog> blogs, String? searchText});
}

/// @nodoc
class __$$BlogsStateImplCopyWithImpl<$Res>
    extends _$BlogsStateCopyWithImpl<$Res, _$BlogsStateImpl>
    implements _$$BlogsStateImplCopyWith<$Res> {
  __$$BlogsStateImplCopyWithImpl(
      _$BlogsStateImpl _value, $Res Function(_$BlogsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? blogs = null,
    Object? searchText = freezed,
  }) {
    return _then(_$BlogsStateImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      blogs: null == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BlogsStateImpl implements _BlogsState {
  _$BlogsStateImpl(
      {this.action, final List<Blog> blogs = const [], this.searchText})
      : _blogs = blogs;

  @override
  final BlocAction? action;
  final List<Blog> _blogs;
  @override
  @JsonKey()
  List<Blog> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  final String? searchText;

  @override
  String toString() {
    return 'BlogsState(action: $action, blogs: $blogs, searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsStateImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other._blogs, _blogs) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action,
      const DeepCollectionEquality().hash(_blogs), searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsStateImplCopyWith<_$BlogsStateImpl> get copyWith =>
      __$$BlogsStateImplCopyWithImpl<_$BlogsStateImpl>(this, _$identity);
}

abstract class _BlogsState implements BlogsState {
  factory _BlogsState(
      {final BlocAction? action,
      final List<Blog> blogs,
      final String? searchText}) = _$BlogsStateImpl;

  @override
  BlocAction? get action;
  @override
  List<Blog> get blogs;
  @override
  String? get searchText;
  @override
  @JsonKey(ignore: true)
  _$$BlogsStateImplCopyWith<_$BlogsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlogsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsEventCopyWith<$Res> {
  factory $BlogsEventCopyWith(
          BlogsEvent value, $Res Function(BlogsEvent) then) =
      _$BlogsEventCopyWithImpl<$Res, BlogsEvent>;
}

/// @nodoc
class _$BlogsEventCopyWithImpl<$Res, $Val extends BlogsEvent>
    implements $BlogsEventCopyWith<$Res> {
  _$BlogsEventCopyWithImpl(this._value, this._then);

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
    extends _$BlogsEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'BlogsEvent.init()';
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
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
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
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements BlogsEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$PageScrolledImplCopyWith<$Res> {
  factory _$$PageScrolledImplCopyWith(
          _$PageScrolledImpl value, $Res Function(_$PageScrolledImpl) then) =
      __$$PageScrolledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$PageScrolledImplCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res, _$PageScrolledImpl>
    implements _$$PageScrolledImplCopyWith<$Res> {
  __$$PageScrolledImplCopyWithImpl(
      _$PageScrolledImpl _value, $Res Function(_$PageScrolledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$PageScrolledImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageScrolledImpl implements PageScrolled {
  const _$PageScrolledImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'BlogsEvent.pageScrolled(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageScrolledImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageScrolledImplCopyWith<_$PageScrolledImpl> get copyWith =>
      __$$PageScrolledImplCopyWithImpl<_$PageScrolledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) {
    return pageScrolled(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) {
    return pageScrolled?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (pageScrolled != null) {
      return pageScrolled(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return pageScrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return pageScrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (pageScrolled != null) {
      return pageScrolled(this);
    }
    return orElse();
  }
}

abstract class PageScrolled implements BlogsEvent {
  const factory PageScrolled(final int count) = _$PageScrolledImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$PageScrolledImplCopyWith<_$PageScrolledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlogClickedImplCopyWith<$Res> {
  factory _$$BlogClickedImplCopyWith(
          _$BlogClickedImpl value, $Res Function(_$BlogClickedImpl) then) =
      __$$BlogClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Blog item});
}

/// @nodoc
class __$$BlogClickedImplCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res, _$BlogClickedImpl>
    implements _$$BlogClickedImplCopyWith<$Res> {
  __$$BlogClickedImplCopyWithImpl(
      _$BlogClickedImpl _value, $Res Function(_$BlogClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$BlogClickedImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Blog,
    ));
  }
}

/// @nodoc

class _$BlogClickedImpl implements BlogClicked {
  const _$BlogClickedImpl(this.item);

  @override
  final Blog item;

  @override
  String toString() {
    return 'BlogsEvent.newsClicked(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogClickedImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogClickedImplCopyWith<_$BlogClickedImpl> get copyWith =>
      __$$BlogClickedImplCopyWithImpl<_$BlogClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) {
    return newsClicked(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) {
    return newsClicked?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (newsClicked != null) {
      return newsClicked(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return newsClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return newsClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (newsClicked != null) {
      return newsClicked(this);
    }
    return orElse();
  }
}

abstract class BlogClicked implements BlogsEvent {
  const factory BlogClicked(final Blog item) = _$BlogClickedImpl;

  Blog get item;
  @JsonKey(ignore: true)
  _$$BlogClickedImplCopyWith<_$BlogClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchTextChangedImplCopyWith<$Res> {
  factory _$$SearchTextChangedImplCopyWith(_$SearchTextChangedImpl value,
          $Res Function(_$SearchTextChangedImpl) then) =
      __$$SearchTextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchTextChangedImplCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res, _$SearchTextChangedImpl>
    implements _$$SearchTextChangedImplCopyWith<$Res> {
  __$$SearchTextChangedImplCopyWithImpl(_$SearchTextChangedImpl _value,
      $Res Function(_$SearchTextChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchTextChangedImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTextChangedImpl implements SearchTextChanged {
  const _$SearchTextChangedImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'BlogsEvent.searchTextChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextChangedImplCopyWith<_$SearchTextChangedImpl> get copyWith =>
      __$$SearchTextChangedImplCopyWithImpl<_$SearchTextChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) {
    return searchTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) {
    return searchTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (searchTextChanged != null) {
      return searchTextChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return searchTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return searchTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (searchTextChanged != null) {
      return searchTextChanged(this);
    }
    return orElse();
  }
}

abstract class SearchTextChanged implements BlogsEvent {
  const factory SearchTextChanged(final String text) = _$SearchTextChangedImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchTextChangedImplCopyWith<_$SearchTextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchImpl implements Search {
  const _$SearchImpl();

  @override
  String toString() {
    return 'BlogsEvent.search()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements BlogsEvent {
  const factory Search() = _$SearchImpl;
}

/// @nodoc
abstract class _$$RefreshDataImplCopyWith<$Res> {
  factory _$$RefreshDataImplCopyWith(
          _$RefreshDataImpl value, $Res Function(_$RefreshDataImpl) then) =
      __$$RefreshDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshDataImplCopyWithImpl<$Res>
    extends _$BlogsEventCopyWithImpl<$Res, _$RefreshDataImpl>
    implements _$$RefreshDataImplCopyWith<$Res> {
  __$$RefreshDataImplCopyWithImpl(
      _$RefreshDataImpl _value, $Res Function(_$RefreshDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshDataImpl implements RefreshData {
  const _$RefreshDataImpl();

  @override
  String toString() {
    return 'BlogsEvent.refreshData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int count) pageScrolled,
    required TResult Function(Blog item) newsClicked,
    required TResult Function(String text) searchTextChanged,
    required TResult Function() search,
    required TResult Function() refreshData,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int count)? pageScrolled,
    TResult? Function(Blog item)? newsClicked,
    TResult? Function(String text)? searchTextChanged,
    TResult? Function()? search,
    TResult? Function()? refreshData,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int count)? pageScrolled,
    TResult Function(Blog item)? newsClicked,
    TResult Function(String text)? searchTextChanged,
    TResult Function()? search,
    TResult Function()? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PageScrolled value) pageScrolled,
    required TResult Function(BlogClicked value) newsClicked,
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(Search value) search,
    required TResult Function(RefreshData value) refreshData,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(PageScrolled value)? pageScrolled,
    TResult? Function(BlogClicked value)? newsClicked,
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(Search value)? search,
    TResult? Function(RefreshData value)? refreshData,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PageScrolled value)? pageScrolled,
    TResult Function(BlogClicked value)? newsClicked,
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(Search value)? search,
    TResult Function(RefreshData value)? refreshData,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class RefreshData implements BlogsEvent {
  const factory RefreshData() = _$RefreshDataImpl;
}
