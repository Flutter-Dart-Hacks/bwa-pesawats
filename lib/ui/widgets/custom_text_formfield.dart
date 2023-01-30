import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.title,
      required this.hintTitle,
      required this.inputType,
      required this.margin,
      this.isObscureText = false});

  final TextEditingController controller;
  final String title;
  final String hintTitle;
  final TextInputType inputType;
  final EdgeInsets margin;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: regular, fontSize: 16),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            keyboardType: inputType,
            cursorColor: kBlackColor,
            cursorWidth: 2,
            obscureText: isObscureText,
            decoration: InputDecoration(
              isDense: true,
              hintText: hintTitle,
              hintStyle:
                  greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: kInactiveColor,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: kInactiveColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: kPrimaryColor,
                  width: 3,
                ),
              ),
            ),
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
