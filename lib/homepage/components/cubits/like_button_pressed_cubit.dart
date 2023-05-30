import 'package:flutter_bloc/flutter_bloc.dart';

class LikeButtonPressedCubit extends Cubit<bool> {
  LikeButtonPressedCubit() : super(false);

  void pressed() {
    emit(true);
  }

  void unPressed() {
    emit(false);
  }

  void toggle() {
    emit(!state);
  }
}
