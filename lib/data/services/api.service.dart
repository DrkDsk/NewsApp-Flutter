import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/data/exceptions/ApiException.dart';
import 'package:news_app/domain/models/article.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String apiKey = 'fafc369434d74d59965957f01f12cfd9';
  final String baseUrl = 'https://newsapi.org/v2';
  final String country = "us";
  ApiException apiException = ApiException();
  final dio = Dio();

  Future<List<Article>> fetchTopHeadlines({required BuildContext context}) async {
    try {
      final response = await dio.get('$baseUrl/top-headlines?country=$country&apiKey=$apiKey');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['articles'];
        return data.map((json) => Article.fromJson(json)).toList();
      } else {
        throw DioException(
            requestOptions: RequestOptions(path: baseUrl),
            response: response,
            type: DioExceptionType.badResponse
        );
      }
    } on DioException catch (exception) {
      apiException.checkException(exception:exception, context: context);
    }
    catch (exception) {
      apiException.defaultErrorMessage(context: context);
    }
    return [];
  }

  Future<List<Article>> fetchCategory({required String category, required BuildContext context}) async {
    try {
      final response = await dio.get('$baseUrl/top-headlines?category=$category&country=$country&apiKey=$apiKey');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['articles'];

        return data
            .where((article) =>
        article['title'] != null &&
            article['author'] != null &&
            article['urlToImage'] != null
        )
            .map((article) => Article.fromJson(article))
            .toList();
      } else {
        throw Exception('Failed to load api resource');
      }
    } on DioException catch(exception) {
      apiException.checkException(exception: exception, context:context);
    } catch(exception) {
      apiException.defaultErrorMessage(context: context);
    }

    return [];
  }

  Future<List<Article>> fetchNewsBySearchField({required String search, required BuildContext context}) async {
    try {
      final response = await dio.get('$baseUrl/everything?q=$search&apiKey=$apiKey');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['articles'];

        return data
            .where((article) =>
        article['title'] != null &&
            article['author'] != null &&
            article['urlToImage'] != null
        )
            .map((article) => Article.fromJson(article))
            .toList();
      } else {
        throw Exception('Failed to load api resource');
      }
    } on DioException catch (exception) {
      apiException.checkException(exception: exception, context: context);
    } catch (excetption) {
      apiException.defaultErrorMessage(context: context);
    }

    return [];
  }
}