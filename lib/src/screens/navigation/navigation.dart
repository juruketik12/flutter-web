import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_wolrd/src/controllers/pageController.dart';
import 'package:hello_wolrd/src/helpers/colors.dart';

class NavigationBar extends StatelessWidget {
  final Size? size;
  NavigationBar({this.size});

  final page = Get.put(IndexController());

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Container(
        height: size!.height * 0.06,
        color: colores.navBg,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 10),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlutterLogo(size: 30),
            ),
            Container(
              child: Text(
                'Flutter Web',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: size!.width * 0.02,
              height: size!.width * 0.02,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/user.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
