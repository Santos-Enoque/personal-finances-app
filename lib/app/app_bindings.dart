import 'package:get/get.dart';
import 'package:moneyro/app/data/repository/settings/settings_imp.dart';
import 'package:moneyro/app/data/repository/settings/settings_int.dart';
import 'app_controller.dart';

class AppBindings {
  static void registerEventsAndDependencies(){

  }

  static void initServices() {
    Get.lazyPut<ISettings>(() => Settings());
    Get.put(AppController());
  }
}