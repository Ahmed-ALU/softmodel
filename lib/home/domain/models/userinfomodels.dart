import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Models {
  IconData getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.person;
      case 1:
        return Icons.cake;
      case 2:
        return Icons.phone;
      case 3:
        return Icons.person_outline;
      case 4:
        return Icons.email;
      case 5:
        return Icons.lock_outline;
      default:
        return Icons.error;
    }
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Name';
      case 1:
        return 'Birthday';
      case 2:
        return 'Phone Number';
      case 3:
        return 'Google Account';
      case 4:
        return 'Email';
      case 5:
        return 'Hidden Password';
      default:
        return 'Error';
    }
  }

  String getSubtitle(int index) {
    switch (index) {
      case 0:
        return 'John Doe';
      case 1:
        return '01/01/1990';
      case 2:
        return '+1 (123) 456-7890';
      case 3:
        return 'john.doe@gmail.com';
      case 4:
        return 'john.doe@gmail.com';
      case 5:
        return '••••••••••••••••';
      default:
        return 'Error';
    }
  }
}
