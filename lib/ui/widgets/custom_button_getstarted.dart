import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class CustomButtonPrimary extends StatelessWidget {
  const CustomButtonPrimary(
      {super.key,
      required this.title,
      this.width = double.infinity,
      required this.onPressedFunction,
      this.margin = EdgeInsets.zero});

  final String title;
  final double width;
  final Function onPressedFunction;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: ElevatedButton(
        onPressed: () {
          onPressedFunction();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultRadius),
            ),
          ),
          elevation: 18,
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
