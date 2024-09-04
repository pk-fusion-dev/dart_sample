import 'dart:convert';

import 'package:http/http.dart' as http;

import 'user.dart';

var url = Uri.parse('https://randomuser.me/api/?results=50');

Future<List<User>> complexDataModel() async {
  List<User> users = <User>[];
  await http.get(url).then((response) {
    var jsonData = jsonDecode(response.body)['results'] as List;
    users = jsonData.map((e) => User.fromJson(e)).toList();
  }).catchError((err) {
    print(err.toString());
  });

  return users;
}

void main() {
  complexDataModel().then((value) {
    for (var user in value) {
      print(user.id?.name);
    }
  });
}
