part of 'news_detail_bloc.dart';

@freezed
class NewsDetailState extends BaseBlocState with _$NewsDetailState {
  factory NewsDetailState({
    BlocAction? action,
    News? newsDetail,
  }) = _NewsDetailState;
}

class NavigateBackAction extends BlocAction {
  NavigateBackAction();
}
