part of 'news_detail_bloc.dart';

@freezed
class NewsDetailEvent with _$NewsDetailEvent {
  const factory NewsDetailEvent.init() = Init;
  const factory NewsDetailEvent.backClicked() = BackClicked;
  const factory NewsDetailEvent.linkClicked() = LinkClicked;
}