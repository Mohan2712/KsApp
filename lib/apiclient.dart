import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

class ApiClient {
  Future<AllGenderData> fetchApi() async {
    final response = await http.get(Uri.parse("https://randomuser.me/api"));
    print("RESPONSE : " + response.body);
    Map<String, dynamic> data = jsonDecode(response.body);
    return AllGenderData.fromJson(data);
  }
}
