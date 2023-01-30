import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/bonus_page.dart';
import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:bwa_pesawats/ui/widgets/custom_text_formfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static const String routeName = '/signup';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _controllerFullName =
      TextEditingController(text: '');

  final TextEditingController _controllerEmail =
      TextEditingController(text: '');

  final TextEditingController _controllerPassword =
      TextEditingController(text: '');

  final TextEditingController _controllerHobby =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget getTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget getInputSection() {
      Widget setNamaLengkap() {
        return CustomTextFormField(
          controller: _controllerFullName,
          title: 'Full Name',
          hintTitle: 'insert your full name',
          inputType: TextInputType.text,
          margin: const EdgeInsets.only(
            bottom: 20,
            top: 20,
          ),
        );
      }

      Widget setEmailAddress() {
        return CustomTextFormField(
          controller: _controllerEmail,
          title: 'Email Address',
          hintTitle: 'insert your email address',
          inputType: TextInputType.emailAddress,
          margin: const EdgeInsets.only(bottom: 20),
        );
      }

      Widget setPasswordInput() {
        return CustomTextFormField(
          controller: _controllerPassword,
          title: 'Password',
          hintTitle: 'insert your password',
          inputType: TextInputType.text,
          margin: const EdgeInsets.only(bottom: 20),
          isObscureText: true,
        );
      }

      Widget setHobbyInput() {
        return CustomTextFormField(
          controller: _controllerHobby,
          title: 'Hobby',
          hintTitle: 'insert your hobby',
          inputType: TextInputType.text,
          margin: const EdgeInsets.only(bottom: 30),
        );
      }

      Widget submitButtonForm() {
        // return Container(
        //   width: double.infinity,
        //   height: 55,
        //   margin: const EdgeInsets.only(
        //     top: 30,
        //   ),
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.pushNamed(context, BonusPage.routeName);
        //     },
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: kPrimaryColor,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(defaultRadius),
        //         ),
        //       ),
        //       elevation: 15,
        //     ),
        //     child: Text(
        //       'Get Started',
        //       style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        //     ),
        //   ),
        // );
        return CustomButtonPrimary(
            title: 'Get Started',
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 80,
            ),
            onPressedFunction: () {
              return Navigator.pushNamed(context, BonusPage.routeName);
            });
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
        ),
        child: Column(
          children: [
            setNamaLengkap(),
            setEmailAddress(),
            setPasswordInput(),
            setHobbyInput(),
            submitButtonForm(),
          ],
        ),
      );
    }

    Widget termConditionWidget() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 73,
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: kGreyColor,
          ),
          child: Text(
            'Terms and Condition',
            style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.all(0),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              getTitle(),
              getInputSection(),
              termConditionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
