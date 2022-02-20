import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moneyro/app/app_bindings.dart';
import 'package:moneyro/app/modules/home/controllers/home_controller.dart';
import 'app/app_view.dart';
import 'app/shared/const/app_hive_boxes.dart';
import 'app/shared/models/category/category.dart';
import 'app/shared/models/transaction/transaction.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // register adapters
  Hive.registerAdapter<TransactionCategory>(TransactionCategoryAdapter());
  Hive.registerAdapter<Transaction>(TransactionAdapter());
  // open boxes
  await Hive.openBox<dynamic>(AppHiveBoxes.settingsBoxName);
  await Hive.openBox<TransactionCategory>(AppHiveBoxes.categoriesBoxName);
  await Hive.openBox<Transaction>(AppHiveBoxes.transactionsBoxName);
  AppBindings.initServices();
  AppBindings.registerEventsAndDependencies();
  runApp(MyApp());
}
