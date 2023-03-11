part of 'seat_data_cubit.dart';

abstract class SeatDataState extends Equatable {
  const SeatDataState();

  @override
  List<Object> get props => [];
}

class SeatDataInitial extends SeatDataState {
  final List<String> listSeatSelect;

  const SeatDataInitial(this.listSeatSelect);

  @override
  List<Object> get props => [listSeatSelect];
}

class SeatDataSelected extends SeatDataState {
  final List<String> listSeatSelect;

  const SeatDataSelected(this.listSeatSelect);

  @override
  List<Object> get props => [listSeatSelect];
}
