import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      Text('account', style: Theme.of(context).textTheme.bodyText1,),)
    );
  }
}