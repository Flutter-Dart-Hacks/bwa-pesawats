import 'package:flutter/material.dart';

class PhotoItems extends StatelessWidget {
  const PhotoItems({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
