part of 'blog_detail_bloc.dart';

@freezed
class BlogDetailState extends BaseBlocState with _$BlogDetailState {
  factory BlogDetailState({
    BlocAction? action,
    Blog? blogDetail,
  }) = _BlogDetailState;
}

class NavigateBackAction extends BlocAction {
  NavigateBackAction();
}
