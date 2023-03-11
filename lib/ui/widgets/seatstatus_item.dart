import 'package:bwa_pesawats/shareds/constants.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({super.key, required this.statusSeat, required this.id});

  final int statusSeat;
  final String id;

  @override
  Widget build(BuildContext context) {
    getBackgroundColor() {
      switch (statusSeat) {
        case statusAvailable:
          return kAvailableColor;
        case statusSelected:
          return kPrimaryColor;
        case statusUnavailable:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    getBorderColor() {
      switch (statusSeat) {
        case statusAvailable:
          return kPrimaryColor;
        case statusSelected:
          return kPrimaryColor;
        case statusUnavailable:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    getStatusText() {
      switch (statusSeat) {
        case statusAvailable:
          return const SizedBox();
        case statusSelected:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 14,
              ),
            ),
          );
        case statusUnavailable:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return Container(
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
    );
  }
}
