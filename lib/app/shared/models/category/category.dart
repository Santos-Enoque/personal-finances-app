import 'package:hive/hive.dart';
import 'package:moneyro/app/data/repository/categories/categories_imp.dart';
import 'package:uuid/uuid.dart';
part 'category.g.dart';

@HiveType(typeId: 0)
class TransactionCategory extends HiveObject {
  TransactionCategory(
      {required this.id,
      required this.name,
      required this.icon,
      required this.isGroup,
      required this.categoryGroup});

  factory TransactionCategory.create(
      {required String name,
      required String icon,
      TransactionCategory? categoryGroup,
      bool isGroup = false}) {
    final id = Uuid().v1();
    final repository = CategoriesRepository();
    if (!isGroup) {
      var childCategory = TransactionCategory(
        id: id,
        name: name,
        icon: icon,
        isGroup: isGroup,
        categoryGroup: HiveList(repository.box),
      );

      childCategory.categoryGroup!.add(categoryGroup!);

      return childCategory;
    }
    return TransactionCategory(
        id: id,
        name: name,
        icon: icon,
        isGroup: isGroup,
        categoryGroup: HiveList(repository.box));
  }

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String icon;
  @HiveField(3)
  HiveList<TransactionCategory>? categoryGroup;
  @HiveField(4)
  final bool isGroup;

  @override
  String toString() {
    return isGroup
        ? 'id:$id, name:$name, isGroup:$isGroup, icon:$icon'
        : 'id:$id, name:$name, isGroup:$isGroup, icon:$icon category: $categoryGroup';
  }
}
