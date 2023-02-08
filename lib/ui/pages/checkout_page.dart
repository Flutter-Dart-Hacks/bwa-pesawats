import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/widgets/booking_detail_item.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  static const String routeName = '/checkout_page';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    createRouteWidget() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('resources/image_checkout_header.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    createBookingDetails() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: DESTINATION TILE
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(
                    right: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage('resources/image_destination1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                            fontWeight: light, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      margin: const EdgeInsets.only(right: 2, top: 4),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('resources/icon_star.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: Text(
                        '4.8',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // NOTE: BOOKING DETAILS
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
            ),

            // NOTE : BOOKING DETAILS ITEM
            const BookingDetailItem(
                title: 'Traveler',
                valueText: '2 person',
                valueColor: kBlackColor),
            const BookingDetailItem(
              title: 'Seat',
              valueText: 'A3, B3',
              valueColor: kBlackColor,
            ),
            const BookingDetailItem(
              title: 'Insurance',
              valueText: 'YES',
              valueColor: kGreenColor,
            ),
            const BookingDetailItem(
              title: 'Refundable',
              valueText: 'NO',
              valueColor: kRedColor,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            createRouteWidget(),
            createBookingDetails(),
          ],
        ),
      ),
    );
  }
}
