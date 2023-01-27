import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem(
      {super.key, required this.imageUrl, required this.isSelected});

  final String imageUrl;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparan,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}
