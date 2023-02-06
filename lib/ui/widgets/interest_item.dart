import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class InterestsItem extends StatelessWidget {
  const InterestsItem({super.key, required this.interestName});

  final String interestName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
              right: 6,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('resources/icon_check.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            interestName,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
