import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_wolrd/src/controllers/pageController.dart';
import 'package:hello_wolrd/src/routes/routes.dart';
import 'package:hello_wolrd/src/screens/sidebar/widget/sidebarItem.dart';

class SideBar extends StatelessWidget {
  final Size? size;
  SideBar({this.size});

  final page = Get.put(IndexController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size!.width * 0.14,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(3, 0),
          ),
        ],
      ),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: size!.height * 0.02),
            Container(
              height: size!.height * 0.04,
              alignment: Alignment.center,
              child: Text(
                'Flutter Web',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0), child: new Divider()),
            SideBarItem(
              title: 'Dashboard',
              selected: page.indexPage.value == 0,
              onHighlight: onHighlight,
              routeName: routeDashboard,
              svgSrc: "icons/menu_dashbord.svg",
            ),
            SideBarItem(
              title: 'List User',
              selected: page.indexPage.value == 1,
              onHighlight: onHighlight,
              routeName: routeUsers,
              svgSrc: "icons/menu_profile.svg",
            ),
          ],
        ),
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeDashboard:
        page.changeHighlight(0);
        break;
      case routeUsers:
        page.changeHighlight(1);
        break;
    }
  }
}
