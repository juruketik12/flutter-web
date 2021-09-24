import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'interctiveNavItem.dart';

class NavigationItem extends StatelessWidget {
  final String? title;
  final String? routeName;
  final bool? selected;
  final Function? onHighlight;

  const NavigationItem({
    @required this.title,
    @required this.routeName,
    @required this.selected,
    @required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeName!);
        onHighlight!(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }
}
