import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.language, color: Color(0xff072f53)),
          title: Text(
            'Language',
            style: TextStyle(color: Color(0xff072f53)),
          ),
          trailing: DropdownButton<String>(
            value: 'English',
            onChanged: (_) {},
            items: <String>['English', 'French', 'Spanish', 'German']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.notifications, color: Color(0xff072f53)),
          title:
              Text('Notifications', style: TextStyle(color: Color(0xff072f53))),
          trailing: Switch(
            value: true,
            onChanged: (_) {},
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.brightness_medium, color: Color(0xff072f53)),
          title: Text('Theme', style: TextStyle(color: Color(0xff072f53))),
          trailing: DropdownButton<String>(
            value: 'Light',
            onChanged: (_) {},
            items: <String>['Light', 'Dark']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.security,
            color: Color(0xff072f53),
          ),
          title: Text('Privacy', style: TextStyle(color: Color(0xff072f53))),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff072f53),
          ),
          onTap: () {
            // Navigate to privacy page
          },
        ),
        Divider(),
      ],
    );
  }
}
