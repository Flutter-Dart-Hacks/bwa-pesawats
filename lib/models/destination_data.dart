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
// object to json string
// https://www.bezkoder.com/dart-flutter-convert-object-to-json-string/
// json string to object
// https://www.bezkoder.com/dart-flutter-parse-json-string-array-to-object-list/
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
      name: json['name'] is String ? json['name'] as String : '',
      city: json['city'] is String ? json['name'] as String : '',
      imageUrl: json['imageUrl'] ?? '',
      price: json['price'] ?? 0,
      rating: json['rating'].toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'city': city,
      'imageUrl': imageUrl,
      'price': price,
      'rating': rating,
    };
  }

  @override
  List<Object?> get props => [id, name, city, imageUrl, price, rating];

  @override
  bool? get stringify => true;
}
