import 'package:hive/hive.dart';
import 'package:moneyro/app/shared/models/category/category.dart';

abstract class ICategoriesRepository {
  Box<TransactionCategory> getBox();
  
  void createInitialCategoriesGroups(
      {required List<TransactionCategory> categories,
       bool force = false}) {}

    void createInitialCategories(
      {required List<TransactionCategory> categories,
       bool force = false}) {}

  void createCategory(TransactionCategory category){}

  void updateCategory(TransactionCategory category){}

  void deleteCategory(TransactionCategory category){}

  List<TransactionCategory> getCategoriesGroup(TransactionCategory category);

  List<TransactionCategory> getCategories(TransactionCategory category);

}
