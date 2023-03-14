import 'package:bwa_pesawats/models/transaction_model.dart';

class CheckoutArguments {
  final String stringPayload;
  final int intPayload;
  final TransactionModel transactionModel;

  CheckoutArguments({
    this.stringPayload = '',
    this.intPayload = 0,
    required this.transactionModel,
  });
}
