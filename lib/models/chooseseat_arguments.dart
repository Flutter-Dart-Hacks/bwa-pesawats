import 'package:bwa_pesawats/models/destination_data.dart';

class ChooseSeatArguments {
  final DestinationsModel destinationsModel;
  final String stringPayload;
  final int intPayload;

  ChooseSeatArguments({
    this.stringPayload = '',
    this.intPayload = 0,
    required this.destinationsModel,
  });
}
