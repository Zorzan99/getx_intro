import 'package:get/state_manager.dart';

class ValueController extends GetxController {
  RxString definedValue = ''.obs;

  RxBool isLoading = false.obs;

  Future<void> setValue(String nemValue) async {
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    definedValue.value = nemValue;
    isLoading.value = false;
  }
}
