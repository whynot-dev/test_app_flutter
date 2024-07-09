part of 'news_detail_bloc.dart';

@freezed
class NewsDetailState extends BaseBlocState with _$NewsDetailState {
  factory NewsDetailState({
    BlocAction? action,
  }) = _NewsDetailState;
}
