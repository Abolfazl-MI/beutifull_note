
import 'package:beutifull_note/controllers/auth_controller/auth_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<RegistrattionController>(RegistrattionController());
  }

}