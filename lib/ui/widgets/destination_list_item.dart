import 'package:bwa_pesawats/models/destination_data.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/pages/detail_destination_page.dart';
import 'package:flutter/material.dart';
import 'package:bwa_pesawats/models/detail_arguments.dart';

class DestinationListItem extends StatefulWidget {
  const DestinationListItem({
    super.key,
    required this.destinationsModel,
  });

  final DestinationsModel destinationsModel;

  @override
  State<DestinationListItem> createState() => _DestinationListItemState();
}

class _DestinationListItemState extends State<DestinationListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailDestination.routeName,
          arguments: DetailArguments(
            destinationsModel: widget.destinationsModel,
          ),
        );
      },
      child: Container(
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
                  image: NetworkImage(widget.destinationsModel.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.destinationsModel.name,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.destinationsModel.city,
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
                    '${widget.destinationsModel.rating}',
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
      ),
    );
  }
}
