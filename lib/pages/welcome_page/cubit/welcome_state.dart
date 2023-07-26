part of 'welcome_cubit.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState.initial() = _Initial;
  const factory WelcomeState.loading() = _Loading;
  const factory WelcomeState.loaded() = _Loaded;
}
