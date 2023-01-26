import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({super.key});

  static const String routeName = '/bonuspage';

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  @override
  Widget build(BuildContext context) {
    Widget getBonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('resources/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor,
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                            fontWeight: light, fontSize: 14),
                      ),
                      Text(
                        'Denise Joe',
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('resources/icon_plane.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getBonusCard(),
            ],
          ),
        ),
      ),
    );
  }
}
