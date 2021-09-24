import 'package:get/get.dart';
import 'package:hello_wolrd/src/routes/routes.dart';
import 'package:hello_wolrd/src/screens/dashboardPage.dart';
import 'package:hello_wolrd/src/screens/usersPage.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: routeDashboard,
    page: () => DashboardPage(),
  ),
  GetPage(
    name: routeUsers,
    page: () => UsersPage(),
  ),
];
