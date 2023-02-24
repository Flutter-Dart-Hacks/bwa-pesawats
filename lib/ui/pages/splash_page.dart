import 'dart:async';

import 'package:bwa_pesawats/cubits/auths_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/getstarted_page.dart';
import 'package:bwa_pesawats/ui/pages/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  static const String routeName = '/splash_page';

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      // mengambil user yang sedang aktif dari Firebase Instance
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, GetStartedPages.routeName, (route) => false);
      } else {
        print(user.email);
        context.read<AuthsCubit>().getCurrentUser(user.uid);
        Navigator.pushNamedAndRemoveUntil(
            context, MainPage.routeName, (route) => false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(
                  bottom: 50,
                  right: 4,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('resources/icon_plane.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Menghitung letter spacing 32 * 31.5 / 100
              Text(
                'AIRPLANE',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: medium,
                  letterSpacing: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
