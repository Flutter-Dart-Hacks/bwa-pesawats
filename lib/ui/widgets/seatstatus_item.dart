import 'package:bwa_pesawats/cubits/seat_data_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({super.key, required this.id, this.isAvailable = true});

  final String id;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatDataCubit>().isSelectedSeat(id);

    getBackgroundColor() {
      print(isSelected);
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    getBorderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    getStatusText() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatDataCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: getBorderColor(),
            width: 2,
          ),
        ),
        child: Center(
          child: getStatusText(),
        ),
      ),
    );
  }
}
