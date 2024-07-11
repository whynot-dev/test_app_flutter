part of 'blogs_bloc.dart';

@freezed
class BlogsState extends BaseBlocState with _$BlogsState {
  factory BlogsState({
    BlocAction? action,
    @Default([]) List<Blog> blogs,
    String? searchText,
  }) = _BlogsState;
}

class NavigateToBlogDetail extends BlocAction {
  NavigateToBlogDetail({required this.id});

  final int id;
}

class AddNewsPage extends BlocAction {
  AddNewsPage({
    required this.blogs,
    required this.currentCount,
  });

  final List<Blog> blogs;
  final int currentCount;
}

class AddLastNewsPage extends BlocAction {
  AddLastNewsPage({required this.blogs});

  final List<Blog> blogs;
}

class RefreshList extends BlocAction {
  RefreshList({this.needRefreshData = false});

  final bool needRefreshData;
}
