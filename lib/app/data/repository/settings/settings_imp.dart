import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:moneyro/app/data/repository/settings/settings_int.dart';
import 'package:moneyro/app/shared/const/app_hive_boxes.dart';
import 'package:moneyro/app/shared/const/app_hive_keys.dart';

class Settings extends ISettings{
  final Box box = Hive.box(AppHiveBoxes.settingsBoxName);

  @override
  bool isDarkTheme(){
    bool? value = box.get(AppHiveKeys.darkMode);
    return value == null ? Get.isPlatformDarkMode : value;
  }
  

  @override
  void setDarkThemeValue(bool value) {
    box.put(AppHiveKeys.darkMode, value);
  }

}