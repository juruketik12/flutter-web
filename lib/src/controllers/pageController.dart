import 'package:get/state_manager.dart';

class IndexController extends GetxController {
  RxInt indexPage = 0.obs;

  void changeHighlight(int newIndex) {
    indexPage.value = newIndex;
  }
}
