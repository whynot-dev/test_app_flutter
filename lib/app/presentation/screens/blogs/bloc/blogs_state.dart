part of 'blogs_bloc.dart';

@freezed
class BlogsState extends BaseBlocState with _$BlogsState {
  factory BlogsState({
    BlocAction? action,
  }) = _BlogsState;
}
