import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/time.dart';

class TimeApi {
  Future<Time> getTime() async {
    final response = await http
        .get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Seoul'));
    return Time.fromJson(jsonDecode(response.body));
  }
}
