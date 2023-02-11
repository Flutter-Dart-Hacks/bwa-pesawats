import 'package:bwa_pesawats/cubits/cubit/page_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem(
      {super.key,
      required this.imageUrl,
      required this.isSelected,
      required this.index});

  final int index;
  final String imageUrl;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        margin: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                color: isSelected ? kPrimaryColor : kTransparan,
                borderRadius: BorderRadius.circular(18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
