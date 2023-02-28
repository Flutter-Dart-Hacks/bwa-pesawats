import 'package:bwa_pesawats/models/destination_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  final CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationsModel>> fetchDestinations() async {
    try {
      QuerySnapshot resultQuerySnapshot = await _destinationRef.get();

      List<DestinationsModel> destinations = resultQuerySnapshot.docs.map((e) {
        return DestinationsModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
