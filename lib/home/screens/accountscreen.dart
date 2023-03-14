import 'package:flutter/material.dart';
import 'package:softmodel/home/widgets/homedrawer.dart';
import '../domain/models/userinfomodels.dart';
import '../widgets/accountbody.dart';

class AccountScreen extends StatelessWidget {
  Models models = Models();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        shadowColor: Color(0xff072f53),
        title: Text('Account'),
      ),
      body: AccountBody(models: models),
    );
  }
}
