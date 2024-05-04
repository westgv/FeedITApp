
import 'package:get/get.dart';
import 'login.view.controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => LoginController());
  }
}