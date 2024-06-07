import '../entities/article.dart';
import 'dart:convert';

ArticleResponse articleResponseFromJson(String str) => ArticleResponse.fromJson(json.decode(str));
String articleResponseToJson(ArticleResponse data) => json.encode(data.toJson());
class ArticleResponse {
  ArticleResponse({
      String? status, 
      num? totalResults, 
      List<Article>? articles,}){
    _status = status;
    _totalResults = totalResults;
    _articles = articles;
}

  ArticleResponse.fromJson(dynamic json) {
    _status = json['status'];
    _totalResults = json['totalResults'];
    if (json['article'] != null) {
      _articles = [];
      json['article'].forEach((v) {
        _articles?.add(Article.fromJson(v));
      });
    }
  }
  String? _status;
  num? _totalResults;
  List<Article>? _articles;
ArticleResponse copyWith({  String? status,
  num? totalResults,
  List<Article>? articles,
}) => ArticleResponse(  status: status ?? _status,
  totalResults: totalResults ?? _totalResults,
  articles: articles ?? _articles,
);
  String? get status => _status;
  num? get totalResults => _totalResults;
  List<Article>? get articles => _articles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['totalResults'] = _totalResults;
    if (_articles != null) {
      map['article'] = _articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}