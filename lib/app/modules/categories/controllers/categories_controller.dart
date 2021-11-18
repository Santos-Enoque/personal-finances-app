import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'package:moneyro/app/data/providers/local/default_categories_data.dart';
import 'package:moneyro/app/data/repository/categories/categories_int.dart';
import 'package:moneyro/app/shared/models/category/category.dart';

class CategoriesController extends GetxController with StateMixin<List<Map<TransactionCategory, List<TransactionCategory>>>> {
  final ICategoriesRepository repository = Get.find();
  List<Map<String, TransactionCategory>> groupedCategories = [];
  // this is for the UI, in SelectCategoryView
  RxString currentCategoryHeading = ''.obs;


  @override
  void onInit() {
    super.onInit();
    // repository.resetBox();
    _initCategoryGroups().then((value) async {
     _initChildCategories();
    });
    // loadCategories();

    // getCategories();
    loadGroupedCategories();
  }

  Future<void> _initCategoryGroups() async {
    repository.createInitialCategoriesGroups(
        categories: DefaultCategoriesData.initialCategoryGroups);
  }

  void _initChildCategories() {
    loadCategories(getGroupsOnly: true).then((groups){
        var defaultCategories = DefaultCategoriesData.getDefaultChildCategories(groups);
    repository.createInitialChildCategories(
        categories: defaultCategories);
        loadCategories();
    });
  }

  Future<List<TransactionCategory>> loadCategories({bool getGroupsOnly = false}) async {
    var result = await repository.getCategories(getGroups: getGroupsOnly);
    return result;
  }

  void loadGroupedCategories() {
    loadCategories().then((result){
    var groupsMap = groupBy(result, (TransactionCategory category) {
        return category.categoryGroup![0];
    });
    List<Map<TransactionCategory, List<TransactionCategory>>> listGroup = groupsMap.entries.map((entry) => {entry.key: entry.value}).toList();
      change(listGroup, status: RxStatus.success());
    });
  }

  changeCurrentCategoryHeading(String heading){
    currentCategoryHeading.value = heading;
  }
}
