import 'package:flutter/material.dart';

import '../widgets/homedrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        shadowColor: Color(0xff072f53),
        title: const Text('Home Page'),
      ),
      drawer: HomeDrawer(),
      body: const Center(
        child: Text('Welcome to the Home Page'),
      ),
    );
  }
}
