import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/image_manager.dart';
import 'package:trips_app/core/resources/styles.dart';

class CustomSubDetailsBox extends StatelessWidget {
  const CustomSubDetailsBox({
    super.key,
    required this.time,
    required this.date,
    required this.age,
    required this.availability,
    required this.price,
  });
  final String time;
  final String date;
  final int age;
  final int availability;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: kWhiteColor2.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RowItemWidget(text: time, icon: ImageManager.kClockIcon),
              RowItemWidget(text: date, icon: ImageManager.kCalenderIcon),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RowItemWidget(text: 'Age: +$age', icon: ImageManager.kIDIcon),
              RowItemWidget(text: 'Availability: 20', icon: ImageManager.kPersonIcon),
            ],
          ),
        ],
      ),
    );
  }
}

class RowItemWidget extends StatelessWidget {
  const RowItemWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(icon),
          width: 50,
          height: 50,
        ),
        Text(
          text,
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
