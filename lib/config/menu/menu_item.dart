import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Logeate',
      subTitle: 'introduce usuario y contraseña',
      link: '/counter-river',
      icon: Icons.add),
  MenuItem(title: '', subTitle: '', link: '/lobby', icon: Icons.add),
];
