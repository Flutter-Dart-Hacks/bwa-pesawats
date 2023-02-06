import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

const Color kPrimaryColor = Color(0xff5C40CC);
const Color kBlackColor = Color(0xff1F1449);
const Color kWhiteColor = Color(0xffFFFFFF);
const Color kGreyColor = Color(0xff9698A9);
const Color kGreenColor = Color(0xff0EC3AE);
const Color kRedColor = Color(0xffEB70A5);
const Color kBackgroundColor = Color(0xffFAFAFA);
const Color kInactiveColor = Color(0xffDBD7EC);
const Color kTransparan = Colors.transparent;
const Color kUnavailableColor = Color(0xffEBECF1);
const Color kAvailableColor = Color(0xffE0D9FF);

TextStyle blackTextStyle = GoogleFonts.poppins().copyWith(
  color: kBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins().copyWith(
  color: kWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins().copyWith(
  color: kGreyColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins().copyWith(
  color: kGreenColor,
);

TextStyle redTextStyle = GoogleFonts.poppins().copyWith(
  color: kRedColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins().copyWith(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight blackBold = FontWeight.w900;
