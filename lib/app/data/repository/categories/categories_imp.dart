import 'package:hive/hive.dart';
import 'package:moneyro/app/data/providers/local/default_categories_data.dart';
import 'package:moneyro/app/data/repository/categories/categories_int.dart';
import 'package:moneyro/app/shared/const/app_hive_boxes.dart';
import 'package:moneyro/app/shared/models/category/category.dart';

class CategoriesRepository implements ICategoriesRepository {
  final Box<TransactionCategory> box =
      Hive.box<TransactionCategory>(AppHiveBoxes.categoriesBoxName);

  @override
  void createInitialCategoriesGroups(
      {required List<TransactionCategory> categories, bool force = false}) {
    if (box.isEmpty || force) {
      box.clear();
      box.addAll(categories);
      print('added ${box.values.length} category groups');
    }
  }

  @override
  void createInitialCategories(
      {required List<TransactionCategory> categories, bool force = false}) {
    var containsCategories = box.values.where((category) => category.isGroup == false).toList();
    print(containsCategories.length);
    print(DefaultCategoriesData.categories.length);


    if (containsCategories.isEmpty) {
      box.addAll(categories);
      print('added ${box.values.length} categories');
    }
  }

  @override
  void createCategory(TransactionCategory category) {
    // TODO: implement createCategory
  }

  @override
  void deleteCategory(TransactionCategory category) {
    // TODO: implement deleteCategory
  }

  @override
  List<TransactionCategory> getCategories(TransactionCategory category) {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  List<TransactionCategory> getCategoriesGroup(TransactionCategory category) {
    // TODO: implement getCategoriesGroup
    throw UnimplementedError();
  }

  @override
  void updateCategory(TransactionCategory category) {
    // TODO: implement updateCategory
  }

  @override
  Box<TransactionCategory> getBox() => box;
}
