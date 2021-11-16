import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneyro/app/modules/home/controllers/home_controller.dart';
import 'package:moneyro/app/shared/theme/colors.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.displayingWidget.value,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border(
                    top: BorderSide(
                        color: Theme.of(context).accentColor, width: .1)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color: AppColors.black.withOpacity(.2),
                      blurRadius: 20)
                ]),
            padding: EdgeInsets.fromLTRB(16, 16, 16, Platform.isIOS? 32 : 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      controller.changeViewTo(CurrentView.Overview);
                    },
                    icon: Icon(Icons.dashboard,
                        color: controller
                            .getColorForIconView(CurrentView.Overview))),
                IconButton(
                    onPressed: () {
                      controller.changeViewTo(CurrentView.Report);

                    },
                    icon: Icon(Icons.insert_chart,
                        color: controller
                            .getColorForIconView(CurrentView.Report))),
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              color: AppColors.black.withOpacity(.15),
                              blurRadius: 20)
                        ]),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 34,
                          color: Colors.white,
                        ))),
                IconButton(
                    onPressed: () {
                      controller.changeViewTo(CurrentView.Notifications);

                    },
                    icon: Icon(Icons.notifications,
                        color: controller
                            .getColorForIconView(CurrentView.Notifications))),
                IconButton(
                    onPressed: () {
                      controller.changeViewTo(CurrentView.Account);

                    },
                    icon: Icon(Icons.person,
                        color: controller
                            .getColorForIconView(CurrentView.Account))),
              ],
            ),
          ),
        ));
  }
}
