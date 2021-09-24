import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hello_wolrd/src/routes/route_generator.dart';
import 'package:hello_wolrd/src/routes/routes.dart';
import 'package:hello_wolrd/src/screens/appView.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
        fontFamily: 'Abel',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      builder: (_, child) => AppView(
        child: child,
      ),
      initialRoute: routeDashboard,
      getPages: getPages,
    );
  }
}
