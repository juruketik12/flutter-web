import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello_wolrd/src/helpers/colors.dart';
import 'package:hello_wolrd/src/screens/widget/dashboardWidget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Dashboard',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              width: size.width * 0.1,
              padding: EdgeInsets.only(right: 10, bottom: 20),
              child: new Divider(),
            ),
            Row(
              children: [
                DashboardItem(
                  size: size,
                  svgSrc: 'icons/menu_profile.svg',
                  count: '12',
                  title: 'List Users',
                  color: Colors.black45,
                ),
                DashboardItem(
                  size: size,
                  svgSrc: 'icons/menu_store.svg',
                  count: '46',
                  title: 'List Product',
                  color: Colors.amber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
