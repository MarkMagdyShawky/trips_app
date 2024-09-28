import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomRichTexrWidget extends StatelessWidget {
  const CustomRichTexrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(style: Styles.textStyle24, children: <TextSpan>[
        TextSpan(text: 'Welcome To ', style: Styles.textStyle24),
        TextSpan(
          text: 'Sun',
          style: Styles.textStyle24.copyWith(color: kYellowColor),
        ),
        TextSpan(text: ' And ', style: Styles.textStyle24),
        TextSpan(
          text: 'Sea ',
          style: Styles.textStyle24.copyWith(color: kBlueColor),
        ),
        TextSpan(text: 'Trips'),
      ]),
    );
  }
}
