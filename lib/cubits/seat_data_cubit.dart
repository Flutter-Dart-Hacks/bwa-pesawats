import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seat_data_state.dart';

class SeatDataCubit extends Cubit<SeatDataState> {
  SeatDataCubit() : super(const SeatDataInitial([]));

  void selectSeat(String id) {
    List<String> listData = List.from(state.props);
    listData.add(id);
    state.props.add(id);
    emit(SeatDataSelected(listData));
  }

  bool isSelectedSeat(String id) {
    int indexSeat = state.props.indexOf(id);
    if (indexSeat == -1) {
      return false;
    } else {
      return true;
    }
  }
}
