import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Text('notifications', style: Theme.of(context).textTheme.bodyText1,),)
    );
  }
}