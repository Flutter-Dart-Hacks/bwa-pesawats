import 'package:bwa_pesawats/cubits/cubit/page_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/home_pages.dart';
import 'package:bwa_pesawats/ui/pages/settings_page.dart';
import 'package:bwa_pesawats/ui/pages/transaction_page.dart';
import 'package:bwa_pesawats/ui/pages/wallet_pages.dart';
import 'package:bwa_pesawats/ui/widgets/custom_bottom_navitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routeName = '/mainpage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget createBuildContent(BuildContext context, int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePages();
      case 1:
        return const TransactionPage();
      case 2:
        return const WalletPage();
      case 3:
        return const SettingsPage();
      default:
        return const HomePages();
    }
  }

  Widget createCustomBottomNavigation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: 30,
        ),
        height: 60,
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 25,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            NavigationItem(
              index: 0,
              imageUrl: 'resources/icon_home.png',
              isSelected: true,
            ),
            NavigationItem(
              index: 1,
              imageUrl: 'resources/icon_booking.png',
              isSelected: false,
            ),
            NavigationItem(
              index: 2,
              imageUrl: 'resources/icon_cardmenu.png',
              isSelected: false,
            ),
            NavigationItem(
              index: 3,
              imageUrl: 'resources/icon_settings.png',
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, stateCurrentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                createBuildContent(context, stateCurrentIndex),
                createCustomBottomNavigation(context)
              ],
            ),
          ),
        );
      },
    );
  }
}
