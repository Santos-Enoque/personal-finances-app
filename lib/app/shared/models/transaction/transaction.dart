import 'package:hive/hive.dart';
import 'package:moneyro/app/shared/const/app_hive_boxes.dart';
import 'package:moneyro/app/shared/models/category/category.dart';
import 'package:uuid/uuid.dart';
part 'transaction.g.dart';

@HiveType(typeId: 1)
enum TransactionType {
  @HiveField(0)
  Expense,
  @HiveField(1)
  Income,
}
const transactionTypeString = <TransactionType, String>{
  TransactionType.Expense: "Expense",
  TransactionType.Income: "Income",
};

@HiveType(typeId: 2)
class Transaction extends HiveObject {
  Transaction(
      {required this.type,
      required this.amount,
      required this.createdAt,
      required this.id,
      this.categories,
      required this.name});

  factory Transaction.create(
      {required String name,
      required TransactionCategory category,
      required double amount,
      required DateTime createdAt,
      required TransactionType type}) 
    {
      var transaction = Transaction(
        id: Uuid().v1(),
        name: name,
        categories: HiveList(Hive.box(AppHiveBoxes.categoriesBoxName))..add(category),
        type: type,
        amount: amount,
        createdAt: createdAt);
      return transaction;
    }
  
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final TransactionType type;
  @HiveField(3)
  final HiveList? categories;
  @HiveField(4)
  final double amount;
  @HiveField(5)
  final DateTime createdAt;
}
