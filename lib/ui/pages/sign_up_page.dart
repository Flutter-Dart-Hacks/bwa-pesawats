import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/bonus_page.dart';
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
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 16),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: _controllerFullName,
                keyboardType: TextInputType.text,
                cursorColor: kBlackColor,
                cursorWidth: 2,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'insert your full name',
                  hintStyle:
                      greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                ),
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 16,
                ),
              )
            ],
          ),
        );
      }

      Widget setEmailAddress() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 16),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: _controllerEmail,
                keyboardType: TextInputType.emailAddress,
                cursorColor: kBlackColor,
                cursorWidth: 2,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'insert your email address',
                  hintStyle:
                      greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                  ),
                ),
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 16,
                ),
              )
            ],
          ),
        );
      }

      Widget setPasswordInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 16),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: _controllerPassword,
                obscureText: true,
                keyboardType: TextInputType.text,
                cursorColor: kBlackColor,
                cursorWidth: 2,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'insert your password',
                  hintStyle:
                      greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                  ),
                ),
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 16,
                ),
              )
            ],
          ),
        );
      }

      Widget setHobbyInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hobby',
                style:
                    blackTextStyle.copyWith(fontWeight: regular, fontSize: 16),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: _controllerHobby,
                keyboardType: TextInputType.text,
                cursorColor: kBlackColor,
                cursorWidth: 2,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'insert your hobby',
                  hintStyle:
                      greyTextStyle.copyWith(fontWeight: regular, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: kInactiveColor,
                      width: 1,
                    ),
                  ),
                ),
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 16,
                ),
              )
            ],
          ),
        );
      }

      Widget submitButtonForm() {
        return Container(
          width: double.infinity,
          height: 55,
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, BonusPage.routeName);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultRadius),
                ),
              ),
              elevation: 15,
            ),
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
          ),
        );
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
