import 'package:bwa_pesawats/cubits/seat_data_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/checkout_page.dart';
import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:bwa_pesawats/ui/widgets/seatstatus_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseSeatPage extends StatefulWidget {
  const ChooseSeatPage({super.key});

  static const routeName = '/choose_seat';

  @override
  State<ChooseSeatPage> createState() => _ChooseSeatPageState();
}

class _ChooseSeatPageState extends State<ChooseSeatPage> {
  final ScrollController _scrollControllerSeatStatus =
      ScrollController(initialScrollOffset: 0.0);

  @override
  Widget build(BuildContext context) {
    Widget createTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget createSeatStatus() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        height: 24,
        child: Scrollbar(
          controller: _scrollControllerSeatStatus,
          child: SingleChildScrollView(
            controller: _scrollControllerSeatStatus,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // NOTE SEAT AVAILABLE
                Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('resources/icon_available.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'Available',
                  style: blackTextStyle.copyWith(
                      fontWeight: regular, fontSize: 14),
                ),
                // NOTE SEAT SELECTED
                Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 6, left: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('resources/icon_selected.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'Selected',
                  style: blackTextStyle.copyWith(
                      fontWeight: regular, fontSize: 14),
                ),
                // NOTE SEAT UNAVAILABLE
                Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 6, left: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('resources/icon_unavailable.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  'Unavailable',
                  style: blackTextStyle.copyWith(
                      fontWeight: regular, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget selectSeats() {
      return BlocBuilder<SeatDataCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                18,
              ),
              color: kWhiteColor,
            ),
            child: Column(
              children: [
                // NOTE: SEAT INDICATORS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'A',
                          style: greyTextStyle.copyWith(
                              fontWeight: regular, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'B',
                          style: greyTextStyle.copyWith(
                              fontWeight: regular, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '',
                          style: greyTextStyle.copyWith(
                              fontWeight: regular, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'C',
                          style: greyTextStyle.copyWith(
                              fontWeight: regular, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          'D',
                          style: greyTextStyle.copyWith(
                              fontWeight: regular, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),

                // NOTE: SEAT ROW 1
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A1',
                        isAvailable: false,
                      ),
                      const SeatItem(
                        id: 'B1',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: greyTextStyle.copyWith(
                                fontWeight: regular, fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C1',
                      ),
                      const SeatItem(
                        id: 'D1',
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT ROW 2
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A2',
                      ),
                      const SeatItem(
                        id: 'B2',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            style: greyTextStyle.copyWith(
                                fontWeight: regular, fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C2',
                      ),
                      const SeatItem(
                        id: 'D2',
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT ROW 3
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A3',
                      ),
                      const SeatItem(
                        id: 'B3',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            '3',
                            style: greyTextStyle.copyWith(
                                fontWeight: regular, fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C3',
                      ),
                      const SeatItem(
                        id: 'D3',
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT ROW 4
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A4',
                      ),
                      const SeatItem(
                        id: 'B4',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            '4',
                            style: greyTextStyle.copyWith(
                                fontWeight: regular, fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C4',
                      ),
                      const SeatItem(
                        id: 'D4',
                      ),
                    ],
                  ),
                ),

                // NOTE: SEAT ROW 5
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SeatItem(
                        id: 'A5',
                      ),
                      const SeatItem(
                        id: 'B5',
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            '5',
                            style: greyTextStyle.copyWith(
                                fontWeight: regular, fontSize: 16),
                          ),
                        ),
                      ),
                      const SeatItem(
                        id: 'C5',
                      ),
                      const SeatItem(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),

                // NOTE YOUR SEAT PRICE
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Your seat',
                          style: greyTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ),
                      Text(
                        'A3, B3',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),

                // NOTE TOTAL PRICE
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Total',
                          style: greyTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ),
                      Text(
                        'IDR 540.000.000',
                        style: purpleTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    }

    Widget createCheckoutButton() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 50,
        ),
        width: double.infinity,
        child: CustomButtonPrimary(
          title: 'Continue to Checkout',
          onPressedFunction: () {
            Navigator.pushNamed(context, CheckoutPage.routeName);
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            createTitle(),
            createSeatStatus(),
            selectSeats(),
            createCheckoutButton(),
          ],
        ),
      ),
    );
  }
}
