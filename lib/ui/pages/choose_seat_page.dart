import 'package:bwa_pesawats/shareds/constants.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/widgets/seatstatus_item.dart';
import 'package:flutter/material.dart';

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
                    statusSeat: STATUS_UNAVAILABLE,
                  ),
                  const SeatItem(
                    statusSeat: STATUS_UNAVAILABLE,
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
                    statusSeat: STATUS_SELECTED,
                  ),
                  const SeatItem(
                    statusSeat: STATUS_AVAILABLE,
                  ),
                ],
              ),
            )
          ],
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
          ],
        ),
      ),
    );
  }
}
