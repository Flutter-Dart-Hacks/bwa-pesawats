import 'package:equatable/equatable.dart';

class DestinationsModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final int price;
  final double rating;

// JSON Serialize tutorial
// https://www.youtube.com/watch?v=WkZriOBlRAo
// https://www.youtube.com/watch?v=4YhrDyXkpCI
  const DestinationsModel({
    required this.id,
    required this.name,
    required this.city,
    required this.imageUrl,
    this.price = 0,
    this.rating = 0.0,
  });

  factory DestinationsModel.fromJson(String id, Map<String, dynamic> json) {
    return DestinationsModel(
      id: id,
      name: json['name'],
      city: json['city'],
      imageUrl: json['imageUrl'] ?? '',
      price: json['price'] ?? 0,
      rating: json['rating'].toDouble() ?? 0.0,
    );
  }

  @override
  List<Object?> get props => [id, name, city, imageUrl, price, rating];

  @override
  bool? get stringify => true;
}
