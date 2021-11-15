import 'package:get/get.dart';
import 'package:moneyro/app/routes/routes.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    _changeView();
  }

  _changeView(){
    Future.delayed(Duration(seconds: 1), (){
      Get.toNamed(Routes.home);
    });
  }
}