import 'package:get/get.dart';

class Api extends GetConnect {
  // Get request
  Future getUser() async {
    try {
      final res = await get('https://jsonplaceholder.typicode.com/users');

      if (res.statusCode == 200) {
        return res.body;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // Future<Response> postUser(Map data) =>
  //     post('http://youapi/users', body: data);

  // Future<Response<CasesModel>> postCases(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('http://youapi/users/upload', form);
  // }

  // GetSocket userMessages() {
  //   return socket('https://yourapi/users/socket');
  // }
}
