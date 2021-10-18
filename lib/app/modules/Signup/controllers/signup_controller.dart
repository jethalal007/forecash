import 'package:get/get.dart';

class SignupController extends GetxController {
  final count = 0.obs;
  bool changebtn = false;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
