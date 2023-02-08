import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class BookingDetailItem extends StatelessWidget {
  const BookingDetailItem(
      {super.key,
      required this.title,
      required this.valueText,
      required this.valueColor});

  final String title;
  final String valueText;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('resources/icon_check.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
