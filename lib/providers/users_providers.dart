import 'dart:convert';


import 'package:flutter/material.dart';

import '../models/models.dart';
import 'package:http/http.dart' as http;

class UsersProvider extends ChangeNotifier {
  List<User> userList = [];

  UsersProvider() {
    _getJsonData();
  }

  Future<List<User>> _getJsonData() async {
    var url = Uri.parse(
        'https://script.google.com/macros/s/AKfycbwU8zonXNk2mLto9IKyGTKmCmLLpa3ECzrSYvaUfykPxpOaj0exCisQvVyCu3GQWFMIIg/exec?spreadsheetId=1snGY5PlrZfUpg6pjfitij6xYFsZ1pzNdHC9So_Ch2Ic&sheet=usuarios');

    final data = await http.get(url);
    dynamic jsonAppData = jsonDecode(data.body);

    for (dynamic data in jsonAppData) {
      User user = User(
        id: data['id'],
        usuario: data['usuario'],
        clave: data['clave'],
      );
      userList.add(user);
    }
    return userList;
  }
}
