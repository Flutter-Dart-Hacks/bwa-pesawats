part of 'transactions_cubit.dart';

abstract class TransactionsState extends Equatable {
  const TransactionsState();

  @override
  List<Object> get props => [];
}

class TransactionsInitial extends TransactionsState {}

class TransactionsLoading extends TransactionsState {}

class TransactionsSuccess extends TransactionsState {
  final List<TransactionModel> list;

  const TransactionsSuccess(this.list);

  @override
  List<Object> get props => [list];

  @override
  bool? get stringify => true;
}

class TransactionsFailed extends TransactionsState {
  final String errorMessage;

  const TransactionsFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  bool? get stringify => true;
}
