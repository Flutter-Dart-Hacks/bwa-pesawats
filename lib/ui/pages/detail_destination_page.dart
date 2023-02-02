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

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(0),
          child: Stack(
            children: [
              createBackgroundImage(),
            ],
          ),
        ),
      ),
    );
  }
}
