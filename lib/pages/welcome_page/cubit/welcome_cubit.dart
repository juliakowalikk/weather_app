import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_cubit.freezed.dart';
part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(const WelcomeState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(const WelcomeState.loaded());
  }
}
