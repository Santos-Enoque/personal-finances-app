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
      {required List<TransactionCategory> categories}) {
    if (box.isEmpty) {
      box.addAll(categories);
      print('added ${box.values.length} groups');
    }
  }

  @override
  void createInitialChildCategories(
      {required List<TransactionCategory> categories}) {
    var containsCategories = box.values.where((category) => category.isGroup == false).toList();
    print('child categories: ' + containsCategories.length.toString());

    if (containsCategories.isEmpty) {
      box.addAll(categories);
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
  Future<List<TransactionCategory>> getCategories({bool getGroups = false}) async => box.values.where((element) => element.isGroup == getGroups).toList();
 

  @override
  void updateCategory(TransactionCategory category) {
    // TODO: implement updateCategory
  }

  @override
  Box<TransactionCategory> getBox() => box;

  @override
  void resetBox() {
    box.clear();
    print('cleared Categories Box');
  }
}
