import 'package:bwa_pesawats/cubits/transactions_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  final ScrollController _scrollControllerList =
      ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    context.read<TransactionsCubit>().fetchListTransaction();
    super.initState();
  }

  int cekMarginBottomCard(int position, int length) {
    if (position == (length - 1)) {
      return 150;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (context, state) {
        if (state is TransactionsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionsSuccess) {
          if (state.list.isEmpty) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Transactions not Available'),
                ],
              ),
            );
          } else {
            return ListView.builder(
              itemBuilder: (BuildContext context, int position) {
                int marginBottom =
                    cekMarginBottomCard(position, state.list.length);

                return TransactionCardItem(
                  transactionModel: state.list[position],
                  bottomMargin: marginBottom,
                );
              },
              itemCount: state.list.length,
              controller: _scrollControllerList,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            );
          }
        }

        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Transaction Page'),
            ],
          ),
        );
      },
    );
  }
}
