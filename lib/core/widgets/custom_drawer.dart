import 'package:flutter/material.dart';
import 'package:trips_app/core/resources/color_manager.dart';
import 'package:trips_app/core/resources/styles.dart';
import 'package:trips_app/core/utils/app_router.dart';
import 'package:trips_app/core/widgets/drawer_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kWhiteColor,
      shadowColor: kBlueColor,
      elevation: 40,
      child: ListView(
        children: [
          DrawerHeader(
            child: RichText(
              text: TextSpan(
                style: Styles.textStyle24,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sun',
                    style: Styles.textStyle24.copyWith(color: kYellowColor),
                  ),
                  TextSpan(text: ' And ', style: Styles.textStyle24),
                  TextSpan(
                    text: 'Sea ',
                    style: Styles.textStyle24.copyWith(color: kBlueColor),
                  ),
                ],
              ),
            ),
          ),
          DrawerListTitle(navidationDir: RoutesNames.kHomeView, icon: Icons.category, title: 'Categories'),
          DrawerListTitle(navidationDir: RoutesNames.kHomeView, icon: Icons.info, title: 'About us'),
          DrawerListTitle(
              navidationDir: RoutesNames.kHomeView, icon: Icons.contact_page, title: 'Contact us'),
        ],
      ),
    );
  }
}
