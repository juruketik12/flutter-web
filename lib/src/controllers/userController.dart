import 'package:get/state_manager.dart';
import 'package:hello_wolrd/src/models/userModel.dart';
import 'package:hello_wolrd/src/repository/api.dart';

class UserController extends GetxController {
  final repo = Api();

  RxList<UserModel> listUser = <UserModel>[].obs;
  RxBool loading = false.obs;

  getUser() async {
    try {
      loaded(true);
      List<dynamic> repository = await repo.getUser();
      repository.forEach((element) {
        listUser.add(UserModel.fromJson(element));
      });
    } finally {
      loaded(false);
    }
  }

  @override
  void onClose() {
    listUser.clear();
    super.onClose();
  }

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  loaded(bool a) {
    loading.value = a;
  }
}
