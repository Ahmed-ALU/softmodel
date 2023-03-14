import 'package:flutter/material.dart';
import 'package:softmodel/home/widgets/homedrawer.dart';

import '../widgets/settingbody.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        shadowColor: Color(0xff072f53),
        title: Text('Settings'),
      ),
      body: SettingsBody(),
    );
  }
}
