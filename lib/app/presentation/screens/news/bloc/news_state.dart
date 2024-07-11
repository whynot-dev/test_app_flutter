part of 'news_bloc.dart';

@freezed
class NewsState extends BaseBlocState with _$NewsState {
  factory NewsState({
    BlocAction? action,
    @Default([]) List<News> news,
    String? searchText,
  }) = _NewsState;
}

class NavigateToNewsDetail extends BlocAction {
  NavigateToNewsDetail({required this.id});

  final int id;
}

class AddNewsPage extends BlocAction {
  AddNewsPage({
    required this.news,
    required this.currentCount,
  });

  final List<News> news;
  final int currentCount;
}

class AddLastNewsPage extends BlocAction {
  AddLastNewsPage({required this.news});

  final List<News> news;
}

class RefreshList extends BlocAction {
  RefreshList({this.needRefreshData = false});

  final bool needRefreshData;
}
