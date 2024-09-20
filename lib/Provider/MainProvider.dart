import 'dart:convert';
import 'package:comment_pickerrr/Result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Model Class/userModel.dart';

class MainProvider extends ChangeNotifier {
  TextEditingController linkController = TextEditingController();
  int value = 1;
  void incrementValue() {
    value++;
    notifyListeners();
  }

  void decrementValue() {
    if (value > 1) {
      value--;
      notifyListeners();
    }
  }

  TextEditingController apiUserNameController = TextEditingController();
  TextEditingController apiPasswordController = TextEditingController();

  void apiLogin(BuildContext context) async {
    final String apiUrl = "https://reqres.in/api/login";

    final Map<String, String> credentials = {
      "email": apiUserNameController.text,
      "password": apiPasswordController.text,
    };
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(credentials),
      );
      if (response.statusCode == 200) {
        print(response.body.toString() + "Details");
        final Map<String, dynamic> responseBody = jsonDecode(response.body);
        if (responseBody.containsKey("token")) {
          print("Login Successfully");
          print('Token: ${responseBody['token']}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.white,
              content: Center(
                child: Text(
                  "Login Successfully",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          );
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Result(),
              ));
        } else {
          print("Login failed:Missing token");

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.white,
              content: Center(
                child: Text(
                  "Login failed",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          );
        }
      } else {
        print('Server error: ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.white,
            content: Center(
              child: Text(
                'Server error: ${response.statusCode}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        );
      }
    } catch (e) {
      print('Request error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.white,
          content: Center(
            child: Text(
              "Request error",
              style: TextStyle(
                fontSize: 12,
                color: Colors.red,
              ),
            ),
          ),
        ),
      );
    }
  }

  List<Apimodel> userList = [];
  getEmployees() async {
    final response = await http.get(
      Uri.parse("https://reqres.in/api/users?page=1"),
    );
    print("Details");
    print("get details ${response.statusCode.toString()}");

    if (response.statusCode == 200) {

      print("details1 " + response.body.toString());

      final List<dynamic> data = json.decode(response.body)["data"];
      for (var employee in data) {

        print("first Name " + employee["first_name"]);

        userList.add(Apimodel(
            employee["first_name"], employee["last_name"], employee["avatar"]));
      }
      print(userList.length.toString() + ' FJKRF ');
      notifyListeners();
    }
  }
}
