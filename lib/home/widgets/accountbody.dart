import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/models/userinfomodels.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({
    super.key,
    required this.models,
  });

  final Models models;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular(MediaQuery.of(context).size.width * .5),
              bottomRight:
                  Radius.circular(MediaQuery.of(context).size.width * .5),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage(r'lib\splashscreen\assets\images\logov2.png'),
              ),
              SizedBox(height: 16),
              Text(
                'John Doe',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(height: 24, thickness: 2),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(
                  models.getIcon(index),
                  color: Color(0xff072f53),
                ),
                title: Text(
                  models.getTitle(index),
                  style: TextStyle(color: Color(0xff072f53)),
                ),
                subtitle: Text(models.getSubtitle(index),
                    style: TextStyle(color: Color(0xff072f53))),
              );
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.edit),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff072f53))),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
