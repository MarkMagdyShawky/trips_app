import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/styles.dart';

class OldPriceWidget extends StatelessWidget {
  const OldPriceWidget({
    super.key,
    required this.oldPrice,
  });

  final double oldPrice;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$oldPrice\$',
      style: Styles.textStyle18.copyWith(
        fontWeight: FontWeight.w600,
        color: const Color(0xFF8C8C8C),
        decoration: TextDecoration.lineThrough,
        decorationColor: const Color(0xFF8C8C8C),
        decorationThickness: 2,
      ),
    );
  }
}
