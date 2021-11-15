import 'package:get/get.dart';
import 'package:moneyro/app/modules/splash/controllers/splash_controllers.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }

}