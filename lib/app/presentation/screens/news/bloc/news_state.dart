part of 'news_bloc.dart';

@freezed
class NewsState extends BaseBlocState with _$NewsState {
  factory NewsState({
    BlocAction? action,
  }) = _NewsState;
}
