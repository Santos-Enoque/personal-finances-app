import 'package:flutter/material.dart';
import 'package:moneyro/app/shared/const/app_assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppAssets.logo)
      )
    );
  }
}