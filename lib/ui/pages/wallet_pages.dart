import 'package:bwa_pesawats/cubits/auths_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthsCubit, AuthsState>(
      builder: (context, state) {
        if (state is AuthsSuccess) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 211,
                  margin: const EdgeInsets.only(top: 1),
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
                )
              ],
            ),
          );
        }

        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Wallet Page'),
            ],
          ),
        );
      },
    );
  }
}
