import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    Widget createHeader(BuildContext context) {
      return Container();
    }

    return Container(
      margin: const EdgeInsets.all(0),
      child: ListView(
        children: [
          createHeader(context),
        ],
      ),
    );
  }
}
