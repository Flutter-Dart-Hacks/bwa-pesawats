import 'package:bwa_pesawats/models/destination_data.dart';

class DetailArguments {
  final DestinationsModel destinationsModel;
  final String stringPayload;
  final int intPayload;

  DetailArguments({
    this.stringPayload = '',
    this.intPayload = 0,
    required this.destinationsModel,
  });
}
