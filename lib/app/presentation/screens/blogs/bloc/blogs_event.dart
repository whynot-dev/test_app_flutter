part of 'blogs_bloc.dart';

@freezed
class BlogsEvent with _$BlogsEvent {
  const factory BlogsEvent.init() = Init;
  const factory BlogsEvent.pageScrolled(int count) = PageScrolled;
  const factory BlogsEvent.newsClicked(Blog item) = BlogClicked;
  const factory BlogsEvent.searchTextChanged(String text) = SearchTextChanged;
  const factory BlogsEvent.search() = Search;
  const factory BlogsEvent.refreshData() = RefreshData;
}