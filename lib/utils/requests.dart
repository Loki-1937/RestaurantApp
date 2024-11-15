import 'dart:convert';

import 'package:http/http.dart' as http;

request(String url, String requestType) async {
  Future<Object> fetchData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load album');
    }
  }
  return await fetchData().then((responseValue) {
    return responseValue;
  });
}
