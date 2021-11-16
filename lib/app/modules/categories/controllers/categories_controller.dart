import 'package:get/get.dart';
import 'package:moneyro/app/data/providers/local/default_categories_data.dart';
import 'package:moneyro/app/data/repository/categories/categories_int.dart';

class CategoriesController extends GetxController {
  final ICategoriesRepository repository = Get.find();

  @override
  void onInit() {
    super.onInit();
    _initCategoryGroups();
    _initCategories();
  }

  void _initCategoryGroups() {
    repository.createInitialCategoriesGroups(
        categories: DefaultCategoriesData.initialCategoryGroups);
  }

  void _initCategories() {
    repository.createInitialCategories(
        categories: DefaultCategoriesData.categories);
  }
}
