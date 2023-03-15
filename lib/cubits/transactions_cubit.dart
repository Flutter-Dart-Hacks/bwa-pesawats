import 'package:bloc/bloc.dart';
import 'package:bwa_pesawats/models/transaction_model.dart';
import 'package:bwa_pesawats/services/transaction_services.dart';
import 'package:equatable/equatable.dart';

part 'transactions_state.dart';

class TransactionsCubit extends Cubit<TransactionsState> {
  TransactionsCubit() : super(TransactionsInitial());

  void createTransaction(TransactionModel transactionModel) async {
    try {
      emit(TransactionsLoading());
      await TransactionServices().createTransaction(transactionModel);
      emit(const TransactionsSuccess([]));
    } catch (err) {
      emit(TransactionsFailed(err.toString()));
    }
  }

  void fetchListTransaction() async {}
}
