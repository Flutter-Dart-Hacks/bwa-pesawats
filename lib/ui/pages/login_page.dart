import 'package:bwa_pesawats/cubits/auths_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/main_page.dart';
import 'package:bwa_pesawats/ui/pages/sign_up_page.dart';
import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:bwa_pesawats/ui/widgets/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerEmail =
      TextEditingController(text: '');

  final TextEditingController _controllerPassword =
      TextEditingController(text: '');

  void showSnackbarToast(BuildContext context, {String message = ''}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: kRedColor,
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget getTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Sign In with your \nexisting account',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget getInputSection() {
      Widget setEmailAddress() {
        return CustomTextFormField(
          controller: _controllerEmail,
          title: 'Email Address',
          hintTitle: 'insert your email address',
          inputType: TextInputType.emailAddress,
          margin: const EdgeInsets.only(
            top: 20,
            bottom: 20,
          ),
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

      Widget submitButtonForm() {
        return BlocConsumer<AuthsCubit, AuthsState>(
          listener: (context, state) {
            if (state is AuthsSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, MainPage.routeName, (route) => false);
            } else if (state is AuthsFailed) {
              showSnackbarToast(context, message: state.errorMessage);
            }
          },
          builder: (context, state) {
            if (state is AuthsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButtonPrimary(
                title: 'Sign In',
                width: double.infinity,
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 80,
                ),
                onPressedFunction: () {
                  if (_controllerEmail.text.isEmpty ||
                      _controllerPassword.text.isEmpty) {
                    showSnackbarToast(context,
                        message: 'Silahkan isi data dengan benar');
                  } else {
                    context.read<AuthsCubit>().signInUser(
                          email: _controllerEmail.text,
                          password: _controllerPassword.text,
                        );
                  }
                });
          },
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
            setEmailAddress(),
            setPasswordInput(),
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
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, SignUpPage.routeName, (route) => false);
          },
          style: TextButton.styleFrom(
            foregroundColor: kGreyColor,
          ),
          child: Text(
            'Don\'t have account? Sign Up',
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
