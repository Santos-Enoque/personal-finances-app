import 'package:get/route_manager.dart';
import 'package:moneyro/app/modules/categories/bindings/categories_bindings.dart';
import 'package:moneyro/app/modules/home/bindings/home_binding.dart';
import 'package:moneyro/app/modules/home/views/home_view.dart';
import 'package:moneyro/app/modules/splash/bindings/splash_bindings.dart';
import 'package:moneyro/app/modules/splash/views/splash_view.dart';

class Routes {
  static const splashScreen = '/splash';
  static const home = '/';

  static final List<GetPage> pages = [
      GetPage(name: splashScreen,
       page: ()=> SplashView(),
       bindings: [
         SplashBindings(),
         CategoriesBindings(),
       ] ),

      GetPage(name: home, 
      page: ()=> HomeView(),
      bindings: [
        HomeBinding(),
      ]),
  ];
}