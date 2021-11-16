import 'package:get/get.dart';
import 'package:moneyro/app/data/repository/categories/categories_imp.dart';
import 'package:moneyro/app/data/repository/categories/categories_int.dart';
import 'package:moneyro/app/modules/categories/controllers/categories_controller.dart';

class CategoriesBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<ICategoriesRepository>(CategoriesRepository());
    Get.put(CategoriesController());
  }

}