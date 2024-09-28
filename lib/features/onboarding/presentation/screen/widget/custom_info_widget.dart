import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomInofWidget extends StatelessWidget {
  const CustomInofWidget({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
          width: 45,
          height: 45,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            text,
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
