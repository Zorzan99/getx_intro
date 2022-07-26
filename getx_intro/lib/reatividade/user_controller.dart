import 'package:get/get.dart';
import 'package:getx_intro/reatividade/user_model.dart';

class UserController extends GetxController {
  RxString nome = 'Gabriel'.obs;

  Rx<UserModel> user = UserModel().obs;

  void setUserName(String userName) {
    // user.update((obj) {
    //   obj?.name = userName;
    // }); ou entao usar da seguinte forma
    user.value.name = userName;
    user.refresh();
  }

  void setUserAge(int userAge) {
    // user.update((obj) {
    //   obj?.age = userAge;
    // });
    user.value.age = userAge;
    user.refresh();
  }
}
