import 'package:flutter/material.dart';
import 'package:hello_wolrd/src/helpers/colors.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

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
                'List Users',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              width: size.width * 0.1,
              padding: EdgeInsets.only(right: 10, bottom: 20),
              child: new Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
