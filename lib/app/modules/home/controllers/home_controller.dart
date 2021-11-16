import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneyro/app/modules/home/modules/account/views/account_view.dart';
import 'package:moneyro/app/modules/home/modules/notifications/views/notifications_view.dart';
import 'package:moneyro/app/modules/home/modules/overview/views/overview_view.dart';
import 'package:moneyro/app/modules/home/modules/report/views/report_view.dart';

enum CurrentView { Overview, Report, Notifications, Account }

class HomeController extends GetxController {
  Rx<CurrentView> currentView = Rx<CurrentView>(CurrentView.Overview);
  Rx<Widget> displayingWidget = Rx(OverviewView());

  void changeViewTo(CurrentView view) {
    switch (view) {
      case CurrentView.Overview:
        displayingWidget.value = OverviewView();

        break;
      case CurrentView.Report:
        displayingWidget.value = ReportView();

        break;
      case CurrentView.Notifications:
        displayingWidget.value = NotificationsView();

        break;
      case CurrentView.Account:
        displayingWidget.value = AccountView();

        break;
    }
    currentView.value = view;
  }

  Color getColorForIconView(CurrentView view) {
    return currentView.value == view
        ? Get.theme.primaryColor
        : Get.theme.iconTheme.color!;
  }
}
