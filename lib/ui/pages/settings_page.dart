import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButtonPrimary(
            title: 'Sign Out',
            width: 220,
            onPressedFunction: () {},
          )
        ],
      ),
    );
  }
}
