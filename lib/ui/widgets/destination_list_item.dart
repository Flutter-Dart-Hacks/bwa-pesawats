import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';

class DestinationListItem extends StatefulWidget {
  const DestinationListItem(
      {super.key,
      required this.name,
      required this.city,
      required this.imageUrl,
      required this.rating});

  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  @override
  State<DestinationListItem> createState() => _DestinationListItemState();
}

class _DestinationListItemState extends State<DestinationListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: kGreyColor,
            blurRadius: 3,
            spreadRadius: 0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(
              right: 18,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.city,
                  style:
                      greyTextStyle.copyWith(fontWeight: light, fontSize: 14),
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
                  '${widget.rating}',
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
    );
  }
}
