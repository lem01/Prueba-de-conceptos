import 'dart:convert';

import 'package:http/http.dart' as http;

class AccountApi {
  //metodo login
  Future login(String email, String password) async {
    try {
      var url = Uri.parse('https://reqres.in/api/login');

      final http.Response response = await http.post(url,
          body: jsonEncode({"email": email, "password": password, "age": 25}),
          headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        final dynamic parsed = jsonDecode(response.body);
        print("login OK ${parsed["token"]}");
        return true;
      } else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

//metodo getUsers
  Future<List<dynamic>> getUsers(int page) async {
    try {
      var url = Uri.parse('https://reqres.in/api/users?page=$page&delay=3');
      final http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        final parsed = jsonDecode(response.body);
        print(parsed['data'].runtimeType);

        return parsed['data'];
      } else {
        print("error ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
