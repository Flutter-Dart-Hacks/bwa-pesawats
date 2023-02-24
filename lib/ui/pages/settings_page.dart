import 'package:bwa_pesawats/cubits/auths_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/sign_up_page.dart';
import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
    return BlocConsumer<AuthsCubit, AuthsState>(
      listener: (context, state) {
        if (state is AuthsFailed) {
          showSnackbarToast(context, message: state.errorMessage);
        } else if (state is AuthsInitial) {
          Navigator.pushNamedAndRemoveUntil(
              context, SignUpPage.routeName, (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButtonPrimary(
                title: 'Sign Out',
                width: 220,
                onPressedFunction: () {
                  context.read<AuthsCubit>().signOutUser();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
