import 'package:flutter/material.dart';

class ReportView extends StatelessWidget {
  const ReportView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Text('reports', style: Theme.of(context).textTheme.bodyText1,),)
    );
  }
}