import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part 'category.g.dart';
@HiveType(typeId:0)
class TransactionCategory extends HiveObject{
  TransactionCategory({required this.id,required this.name,required this.icon});

  factory TransactionCategory.create({required String name, required String icon}){
    final id = Uuid().v1();
    return TransactionCategory(id: id, name: name, icon: icon);
  }

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String icon;

}