import 'package:bwa_pesawats/models/destination_data.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationsModel destinationsModel;
  final String id;
  final int amountTraveler;
  final String selectedSeats;
  final bool isInsurance;
  final bool isRefundable;
  final double vatPercent;
  final int price;
  final int grandTotal;

  const TransactionModel({
    required this.destinationsModel,
    this.id = '',
    this.amountTraveler = 0,
    this.selectedSeats = '',
    this.isInsurance = false,
    this.isRefundable = false,
    this.vatPercent = 0.0,
    this.price = 0,
    this.grandTotal = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) {
    return TransactionModel(
      destinationsModel: DestinationsModel.fromJson(
        json['destination']['id'],
        json['destination'],
      ),
      id: id,
      amountTraveler: json['amountOfTraveler'],
      selectedSeats: json['selectedSeats'],
      isInsurance: json['insurance'],
      isRefundable: json['refundable'],
      vatPercent: json['vat'],
      price: json['price'],
      grandTotal: json['grandTotal'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'destination': destinationsModel.toJson(),
      'id': id,
      'amountOfTraveler': amountTraveler,
      'selectedSeats': selectedSeats,
      'insurance': isInsurance,
      'refundable': isRefundable,
      'vat': vatPercent,
      'price': price,
      'grandTotal': grandTotal,
    };
  }

  @override
  List<Object?> get props => [
        destinationsModel,
        amountTraveler,
        selectedSeats,
        isInsurance,
        isRefundable,
        vatPercent,
        price,
        grandTotal
      ];

  @override
  bool? get stringify => true;
}
