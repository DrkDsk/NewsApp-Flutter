import 'package:news_app/generated/json/base/json_field.dart';
import 'package:news_app/generated/json/article_entity.g.dart';
import 'dart:convert';
export 'package:news_app/generated/json/article_entity.g.dart';

@JsonSerializable()
class ArticleEntity {
	late String status;
	late int totalResults;
	late List<Article> articles;

	ArticleEntity();

	factory ArticleEntity.fromJson(Map<String, dynamic> json) => $ArticleEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArticleEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class Article {
	late Source source;
	late String author;
	late String title;
	late String description;
	late String url;
	late String urlToImage;
	late String publishedAt;
	late String content;

	Article();

	factory Article.fromJson(Map<String, dynamic> json) => $ArticleArticlesFromJson(json);

	Map<String, dynamic> toJson() => $ArticleArticlesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class Source {
	dynamic id;
	late String name;

	Source();

	factory Source.fromJson(Map<String, dynamic> json) => $ArticleArticlesSourceFromJson(json);

	Map<String, dynamic> toJson() => $ArticleArticlesSourceToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}