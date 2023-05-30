import 'package:flutter_bloc/flutter_bloc.dart';

class TotalLikesCubit extends Cubit<int> {
  TotalLikesCubit() : super(100);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }

  void likeButton({required bool isPressed}) {
    isPressed ? increment() : decrement();
  }
}
