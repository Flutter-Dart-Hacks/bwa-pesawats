import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seat_data_state.dart';

class SeatDataCubit extends Cubit<List<String>> {
  SeatDataCubit() : super([]);

  void selectSeat(String id) {
    if (isSelectedSeat(id)) {
      state.remove(id);
    } else {
      state.add(id);
    }
    print(state);
    emit(state);
  }

  bool isSelectedSeat(String id) {
    int indexSeat = state.indexOf(id);
    if (indexSeat == -1) {
      return false;
    } else {
      return true;
    }
  }
}
