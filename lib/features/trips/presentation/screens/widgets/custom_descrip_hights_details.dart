import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomDescripHightsDetails extends StatelessWidget {
  const CustomDescripHightsDetails({
    super.key,
    required this.description,
    required this.highlights,
  });
  final String description;
  final String highlights;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trip Description',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            description,
            style: Styles.textStyle16,
            textAlign: TextAlign.justify,
          ),
        ),
        //
        SizedBox(height: 30),
        Text(
          'Highlights',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            highlights,
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
