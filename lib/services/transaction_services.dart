import 'package:bwa_pesawats/models/transaction_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionServices {
  final CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transactionModel) async {
    try {
      _transactionReference.add(
        {
          'destination': transactionModel.destinationsModel.toJson(),
          'amountOfTraveler': transactionModel.amountTraveler,
          'selectedSeats': transactionModel.selectedSeats,
          'insurance': transactionModel.isInsurance,
          'refundable': transactionModel.isRefundable,
          'vat': transactionModel.vatPercent,
          'price': transactionModel.price,
          'grandTotal': transactionModel.grandTotal,
        },
      );
    } catch (err) {
      throw Exception(err);
    }
  }

  fetchTransactionList() {}
}
