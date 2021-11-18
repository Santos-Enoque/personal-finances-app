import 'package:hive/hive.dart';
import 'package:moneyro/app/shared/models/category/category.dart';

abstract class ICategoriesRepository {
  void resetBox();
  Box<TransactionCategory> getBox();
  
  void createInitialCategoriesGroups(
      {required List<TransactionCategory> categories});

    void createInitialChildCategories(
      {required List<TransactionCategory> categories});

  void createCategory(TransactionCategory category){}

  void updateCategory(TransactionCategory category){}

  void deleteCategory(TransactionCategory category){}

  Future<List<TransactionCategory>> getCategories({bool getGroups});

}
