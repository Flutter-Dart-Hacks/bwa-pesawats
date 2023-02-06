import 'package:bwa_pesawats/shareds/constants.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({super.key, required this.statusSeat});

  final int statusSeat;

  @override
  Widget build(BuildContext context) {
    getBackgroundColor() {
      switch (statusSeat) {
        case STATUS_AVAILABLE:
          return kAvailableColor;
        case STATUS_SELECTED:
          return kPrimaryColor;
        case STATUS_UNAVAILABLE:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: kUnavailableColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
