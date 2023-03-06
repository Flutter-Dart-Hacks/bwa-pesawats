import 'package:bwa_pesawats/cubits/auths_cubit.dart';
import 'package:bwa_pesawats/cubits/destinations_cubit.dart';
import 'package:bwa_pesawats/models/destination_data.dart';
import 'package:bwa_pesawats/shareds/themes.dart';
import 'package:bwa_pesawats/ui/widgets/destination_card.dart';
import 'package:bwa_pesawats/ui/widgets/destination_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  void initState() {
    context.read<DestinationsCubit>().fetchDestinations();
    super.initState();
  }

  void showSnackbarToast(BuildContext context, {String message = ''}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: kRedColor,
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget createHeader(BuildContext context) {
      return BlocBuilder<AuthsCubit, AuthsState>(
        builder: (context, state) {
          if (state is AuthsSuccess) {
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
                          'Howdy, \n${state.userModel.name.toUpperCase()}',
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
                          style: greyTextStyle.copyWith(
                              fontWeight: light, fontSize: 16),
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
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget createPopulerDestination(
      BuildContext context,
      List<DestinationsModel> destinationlist,
    ) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: destinationlist.map(
              (DestinationsModel destinationsModel) {
                return DestinationCard(destinationsModel: destinationsModel);
              },
            ).toList(),
          ),
        ),
      );
    }

    Widget createDestinationList(
        BuildContext context, List<DestinationsModel> listdestinations) {
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
            Column(
              children: listdestinations.map(
                (DestinationsModel destinationsModel) {
                  return DestinationListItem(
                      destinationsModel: destinationsModel);
                },
              ).toList(),
            ),
          ],
        ),
      );
    }

    return BlocConsumer<DestinationsCubit, DestinationsState>(
      listener: (context, state) {
        if (state is DestinationsFailed) {
          showSnackbarToast(context, message: state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state is DestinationsSuccess) {
          return Container(
            margin: const EdgeInsets.all(0),
            child: ListView(
              children: [
                createHeader(context),
                createPopulerDestination(context, state.destinations),
                createDestinationList(context, state.destinations),
              ],
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
