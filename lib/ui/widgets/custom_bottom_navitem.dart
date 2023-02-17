import 'package:bwa_pesawats/cubits/page_cubit.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem(
      {super.key, required this.imageUrl, required this.index});

  final int index;
  final String imageUrl;

  createColorBg(BuildContext context) {
    print(
        'Nilai indeks $index dengan state ${context.read<PageCubit>().state}');

    return context.watch<PageCubit>().state == index
        ? kPrimaryColor
        : kGreyColor;
  }

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
            Image.asset(
              imageUrl,
              fit: BoxFit.contain,
              width: 24,
              height: 24,
              color: createColorBg(context),
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                // color: isSelected ? kPrimaryColor : kTransparan,
                color: context.watch<PageCubit>().state == index
                    ? kPrimaryColor
                    : kTransparan,
                borderRadius: BorderRadius.circular(18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
