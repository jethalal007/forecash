import 'package:get/get.dart';

import 'package:fore_cash/app/modules/ConnectBankAccount/bindings/connect_bank_account_binding.dart';
import 'package:fore_cash/app/modules/ConnectBankAccount/views/connect_bank_account_view.dart';
import 'package:fore_cash/app/modules/Login/bindings/login_binding.dart';
import 'package:fore_cash/app/modules/Login/views/login_view.dart';
import 'package:fore_cash/app/modules/Signup/bindings/signup_binding.dart';
import 'package:fore_cash/app/modules/Signup/views/signup_view.dart';
import 'package:fore_cash/app/modules/SplashScreen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashScreen(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CONNECT_BANK_ACCOUNT,
      page: () => ConnectBankAccountView(),
      binding: ConnectBankAccountBinding(),
    ),
  ];
}
