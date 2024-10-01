import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomTripDetailsAppBar extends StatelessWidget {
  const CustomTripDetailsAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 40),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: kBlackColor,
            ),
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: Styles.textStyle22.copyWith(fontFamily: 'Bangers'),
          ),
        ],
      ),
    );
  }
}
