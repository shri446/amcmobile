
import 'package:jps/pages//service/apiservice.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage_Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => ApiService());
  }
}