import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/widgets/destination_card.dart';
import 'package:bwa_pesawats/ui/widgets/destination_list_item.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    Widget createHeader(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nJohn Doe',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style:
                        greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('resources/image_profile.png'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGreyColor,
                    blurRadius: 18,
                    spreadRadius: 0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget createPopulerDestination(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'resources/image_destination1.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'resources/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'resources/image_destination3.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'resources/image_destination4.png',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'resources/image_destination5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget createDestinationList(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            const DestinationListItem(
              name: 'Danau Beratan',
              city: 'Singajara',
              imageUrl: 'resources/image_destination6.png',
              rating: 4.5,
            ),
            const DestinationListItem(
              name: 'Sidney Opera',
              city: 'Australia',
              imageUrl: 'resources/image_destination7.png',
              rating: 4.7,
            ),
            const DestinationListItem(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'resources/image_destination8.png',
              rating: 4.8,
            ),
            const DestinationListItem(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'resources/image_destination9.png',
              rating: 4.5,
            ),
            const DestinationListItem(
              name: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'resources/image_destination10.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.all(0),
      child: ListView(
        children: [
          createHeader(context),
          createPopulerDestination(context),
          createDestinationList(context),
        ],
      ),
    );
  }
}
