import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneyro/app/app_controller.dart';
import 'package:moneyro/app/routes/routes.dart';
import 'package:moneyro/app/shared/theme/theme.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller){
      return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moneyro',
      themeMode: controller.themeMode,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      initialRoute: Routes.splashView,
      getPages: Routes.pages,
      defaultTransition: Transition.cupertino
    );
    });
  }
}
