import 'package:get/route_manager.dart';
import 'package:moneyro/app/modules/categories/bindings/categories_bindings.dart';
import 'package:moneyro/app/modules/categories/views/select_category_view.dart';
import 'package:moneyro/app/modules/home/bindings/home_binding.dart';
import 'package:moneyro/app/modules/home/views/home_view.dart';
import 'package:moneyro/app/modules/splash/bindings/splash_bindings.dart';
import 'package:moneyro/app/modules/splash/views/splash_view.dart';

class Routes {
  static const homeView = '/';
  static const splashView = '/splash';
  static const selectCategoryView = '/select_category_view';


  static final List<GetPage> pages = [
      GetPage(name: splashView,
       page: ()=> SplashView(),
       bindings: [
         SplashBindings(),
         CategoriesBindings(),
       ] ),

      GetPage(name: homeView, 
      page: ()=> HomeView(),
      bindings: [
        HomeBinding(),
      ]),

    GetPage(name: selectCategoryView, 
      page: ()=> SelectCategoryView(),),

  ];
}