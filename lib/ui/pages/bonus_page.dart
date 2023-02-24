import 'package:bwa_pesawats/cubits/auths_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/main_page.dart';
import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({super.key});

  static const String routeName = '/bonuspage';

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage> {
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0.0);

  @override
  Widget build(BuildContext context) {
    Widget getBonusCard() {
      return BlocBuilder<AuthsCubit, AuthsState>(
        builder: (context, state) {
          if (state is AuthsSuccess) {
            return Container(
              width: 300,
              height: 211,
              margin: const EdgeInsets.only(top: 140),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              state.userModel.name,
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
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'IDR 280.000.000',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 26,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget getTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 70),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 32),
        ),
      );
    }

    Widget getSubtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontWeight: light,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget getStartFlyButton() {
      return CustomButtonPrimary(
        title: 'Start Fly Now',
        onPressedFunction: () {
          Navigator.pushNamedAndRemoveUntil(
              context, MainPage.routeName, (route) => false);
        },
        width: 220,
        margin: const EdgeInsets.only(top: 50),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Scrollbar(
          controller: _scrollController,
          trackVisibility: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getBonusCard(),
                  getTitle(),
                  getSubtitle(),
                  getStartFlyButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
