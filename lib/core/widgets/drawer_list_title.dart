import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trips_app/core/resources/styles.dart';

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({super.key, required this.navidationDir, required this.icon, required this.title});
  final String navidationDir;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        GoRouter.of(context).push(navidationDir);
      },
      leading: Icon(icon),
      title: Text(title, style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600)),
    );
  }
}
