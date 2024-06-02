import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/domain/models/article.dart';

class ApiService {
  final String apiKey = 'fafc369434d74d59965957f01f12cfd9';
  final String baseUrl = 'https://newsapi.org/v2';
  final String country = "us";

  Future<List<Article>> fetchTopHeadlines() async {
    final response = await http.get(Uri.parse('$baseUrl/top-headlines?country=$country&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['articles'];
      return data.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load api resource');
    }
  }
}