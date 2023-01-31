import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard(
      {super.key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0.0});

  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      margin: EdgeInsets.only(
        left: defaultMargin,
        top: 10,
        bottom: 15,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
        boxShadow: const [
          BoxShadow(
            color: kGreyColor,
            blurRadius: 7,
            spreadRadius: 0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            // NOTE STAR WIDGET
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                  ),
                ),
                child: Row(
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
                        '$rating',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
