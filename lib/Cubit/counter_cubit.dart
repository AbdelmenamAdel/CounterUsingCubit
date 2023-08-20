import 'package:counter_cubit/Cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<ProcessState> {
  CounterCubit() : super(Plus());
  int counter = 0;
  void updateState({required String sign}) {
    if (sign == '+') {
      counter++;
      emit(Plus());
    } else if (sign == '0') {
      counter = 0;
      emit(Plus());
    } else {
      counter--;
      emit(Minus());
    }
  }
}
