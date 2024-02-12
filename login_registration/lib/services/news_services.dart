import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login_registration/constants/constants.dart';

class NewsService {
  final http.Client _httpClient = http.Client();

  Future<Map<String, dynamic>> fetchNews() async {
    final response = await http.get(
      Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=9493c9cdcb284293b8ec2f57621041df'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load news');
    }
  }

  Future<dynamic> fetchNewsBySearching(String query) async {
    final response = await http.get(
      Uri.parse('${ApiUrls.baseUrl}v2/everything?q=$query&apiKey=9493c9cdcb284293b8ec2f57621041df'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load news');
    }
  }
}
