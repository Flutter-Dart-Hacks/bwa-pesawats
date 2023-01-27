import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/widgets/custom_bottom_navitem.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routeName = '/mainpage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
              imageUrl: 'resources/icon_home.png',
              isSelected: true,
            ),
            NavigationItem(
              imageUrl: 'resources/icon_booking.png',
              isSelected: false,
            ),
            NavigationItem(
              imageUrl: 'resources/icon_cardmenu.png',
              isSelected: false,
            ),
            NavigationItem(
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
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            const Text('Main page'),
            createCustomBottomNavigation(context)
          ],
        ),
      ),
    );
  }
}
