part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.init() = Init;
  const factory NewsEvent.pageScrolled(int count) = PageScrolled;
  const factory NewsEvent.newsClicked(News item) = NewsClicked;
  const factory NewsEvent.searchTextChanged(String text) = SearchTextChanged;
  const factory NewsEvent.search() = Search;
  const factory NewsEvent.refreshData() = RefreshData;
}