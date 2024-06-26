import 'package:amped_media_admin/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/router.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  bool isFromMobile;

  NavBarItem(
    this.title,
    this.navigationPath, {
    this.isFromMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.pushNamed(navigationPath);
        // context.pop();
        serviceLocator<NavigationService>().navigateTo(navigationPath);
        isFromMobile == true ? Navigator.of(context).pop() : null;
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
