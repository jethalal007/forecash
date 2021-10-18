import 'package:get/get.dart';

import '../controllers/connect_bank_account_controller.dart';

class ConnectBankAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectBankAccountController>(
      () => ConnectBankAccountController(),
    );
  }
}
