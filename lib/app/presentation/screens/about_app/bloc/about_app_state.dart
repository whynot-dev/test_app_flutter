part of 'about_app_bloc.dart';

@freezed
class AboutAppState extends BaseBlocState with _$AboutAppState {
  factory AboutAppState({
    BlocAction? action,
  }) = _AboutAppState;
}
