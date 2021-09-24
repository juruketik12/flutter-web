import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hello_wolrd/src/helpers/colors.dart';

import 'interactiveSideItem.dart';

class SideBarItem extends StatelessWidget {
  final String? title, routeName, svgSrc;
  final bool? selected;
  final Function? onHighlight;

  const SideBarItem({
    this.title,
    this.selected,
    this.svgSrc,
    this.routeName,
    this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: () {
          Get.toNamed(routeName!);
          onHighlight!(routeName);
        },
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc!,
          color: colores.primary,
          height: 16,
        ),
        title: InteractiveSideItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }
}
