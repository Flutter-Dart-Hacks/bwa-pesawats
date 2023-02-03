import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class DetailDestination extends StatefulWidget {
  const DetailDestination({super.key});

  static const String routeName = '/detailpage';

  @override
  State<DetailDestination> createState() => _DetailDestinationState();
}

class _DetailDestinationState extends State<DetailDestination> {
  @override
  Widget build(BuildContext context) {
    Widget createBackgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('resources/image_destination1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(),
      );
    }

    Widget createShadowBox() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget createBodyContent() {
      return Container(
        // Agar tampilan selebar layar
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            // NOTE: EMBLEM IMAGE
            Container(
              width: 108,
              height: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('resources/icon_emblem.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // NOTE: TITLE WIDGET
            Container(
              margin: const EdgeInsets.only(
                top: 256,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 24,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        margin: const EdgeInsets.only(right: 2, top: 4),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('resources/icon_star.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 3,
                        ),
                        child: Text(
                          '4.7',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(0),
          child: Stack(
            children: [
              createBackgroundImage(),
              createShadowBox(),
              createBodyContent(),
            ],
          ),
        ),
      ),
    );
  }
}
