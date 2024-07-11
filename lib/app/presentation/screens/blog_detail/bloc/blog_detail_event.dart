part of 'blog_detail_bloc.dart';

@freezed
class BlogDetailEvent with _$BlogDetailEvent {
  const factory BlogDetailEvent.init() = Init;
  const factory BlogDetailEvent.backClicked() = BackClicked;
  const factory BlogDetailEvent.linkClicked() = LinkClicked;
}