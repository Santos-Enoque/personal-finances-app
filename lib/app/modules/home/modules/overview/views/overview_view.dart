import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneyro/app/app_controller.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
  final AppController controller = Get.find();
    
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
              controller.toggleTheme();
          }, child: Text('change')),
          Center(child: 
          Text('overview', style: Theme.of(context).textTheme.bodyText1,),),
        ],
      )
    );
  }
}