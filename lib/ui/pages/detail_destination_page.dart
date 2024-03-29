import 'package:bwa_pesawats/models/chooseseat_arguments.dart';
import 'package:bwa_pesawats/models/destination_data.dart';
import 'package:bwa_pesawats/models/detail_arguments.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/choose_seat_page.dart';
import 'package:bwa_pesawats/ui/widgets/custom_button_getstarted.dart';
import 'package:bwa_pesawats/ui/widgets/interest_item.dart';
import 'package:bwa_pesawats/ui/widgets/photo_items.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailDestination extends StatefulWidget {
  const DetailDestination({super.key});

  static const String routeName = '/detailpage';

  @override
  State<DetailDestination> createState() => _DetailDestinationState();
}

class _DetailDestinationState extends State<DetailDestination> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DetailArguments? argsDetailData =
        ModalRoute.of(context)?.settings.arguments as DetailArguments?;
    DestinationsModel destinationsModel = argsDetailData?.destinationsModel ??
        const DestinationsModel(
            id: 'id', name: 'name', city: 'city', imageUrl: 'imageUrl');

    Widget createBackgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(destinationsModel.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(),
      );
    }

    Widget createShadowBox() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget createBodyContent() {
      return Container(
        // Agar tampilan selebar layar
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            // NOTE: EMBLEM IMAGE
            Container(
              width: 108,
              height: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('resources/icon_emblem.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // NOTE: TITLE WIDGET
            Container(
              margin: const EdgeInsets.only(
                top: 256,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destinationsModel.name,
                          style: whiteTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 24,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          destinationsModel.city,
                          style: whiteTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 16,
                          ),
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
                          '${destinationsModel.rating}',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // NOTE : DESKRIPSI DETAIL
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: ABOUT
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(
                      fontWeight: regular,
                      height: 2,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: PHOTOS ABOUT
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const SizedBox(
                    height: 80,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PhotoItems(imageUrl: 'resources/image_photo1.png'),
                          PhotoItems(imageUrl: 'resources/image_photo2.png'),
                          PhotoItems(imageUrl: 'resources/image_photo3.png'),
                        ],
                      ),
                    ),
                  ),

                  // NOTE INTEREST
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Row(
                    children: [
                      InterestsItem(interestName: 'Kids Park'),
                      InterestsItem(interestName: 'Honor Bridge')
                    ],
                  ),
                  const Row(
                    children: [
                      InterestsItem(interestName: 'City Museum'),
                      InterestsItem(interestName: 'Central Mall')
                    ],
                  ),
                ],
              ),
            ),
            // NOTE: PRICE AND BOOK BUTTON
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              child: Row(
                children: [
                  // NOTE PRICE HARGA
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'IDR ${destinationsModel.price}',
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'IDR ',
                            decimalDigits: 0,
                          ).format(destinationsModel.price),
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomButtonPrimary(
                      title: 'Book Now',
                      onPressedFunction: () {
                        Navigator.pushNamed(
                          context,
                          ChooseSeatPage.routeName,
                          arguments: ChooseSeatArguments(
                            destinationsModel: destinationsModel,
                          ),
                        );
                      },
                      width: double.infinity,
                    ),
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
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(0),
            child: Stack(
              children: [
                createBackgroundImage(),
                createShadowBox(),
                createBodyContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
