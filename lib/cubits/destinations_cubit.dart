import 'package:bloc/bloc.dart';
import 'package:bwa_pesawats/models/destination_data.dart';
import 'package:bwa_pesawats/services/destination_services.dart';
import 'package:equatable/equatable.dart';

part 'destinations_state.dart';

class DestinationsCubit extends Cubit<DestinationsState> {
  DestinationsCubit() : super(DestinationsInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationsLoading());

      List<DestinationsModel> listDestinations =
          await DestinationService().fetchDestinations();

      emit(DestinationsSuccess(listDestinations));
    } catch (err) {
      emit(DestinationsFailed(err.toString()));
    }
  }
}
