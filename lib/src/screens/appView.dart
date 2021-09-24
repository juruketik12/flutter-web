import 'package:flutter/material.dart';
import 'package:hello_wolrd/src/screens/navigation/navigation.dart';
import 'package:hello_wolrd/src/screens/sidebar/sidebar.dart';

class AppView extends StatelessWidget {
  final Widget? child;
  const AppView({@required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: size.height * 0.06),
              Expanded(
                child: Row(
                  children: [
                    SideBar(size: size),
                    Expanded(child: child!),
                  ],
                ),
              ),
            ],
          ),
          NavigationBar(size: size),
        ],
      ),
    );
  }
}
