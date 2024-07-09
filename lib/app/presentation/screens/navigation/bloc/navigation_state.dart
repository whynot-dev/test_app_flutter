part of 'navigation_bloc.dart';

@freezed
class NavigationState extends BaseBlocState with _$NavigationState {
  factory NavigationState({
    BlocAction? action,
    @Default(NavigationBarItem.news) NavigationBarItem selectedItem,
  }) = _NavigationState;
}
