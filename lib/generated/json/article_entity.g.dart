import 'package:news_app/domain/models/article.entity.dart';
import 'package:news_app/generated/json/base/json_convert_content.dart';

ArticleEntity $ArticleEntityFromJson(Map<String, dynamic> json) {
  final ArticleEntity articleEntity = ArticleEntity();
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    articleEntity.status = status;
  }
  final int? totalResults = jsonConvert.convert<int>(json['totalResults']);
  if (totalResults != null) {
    articleEntity.totalResults = totalResults;
  }
  final List<Article>? articles = (json['articles'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<Article>(e) as Article)
      .toList();
  if (articles != null) {
    articleEntity.articles = articles;
  }
  return articleEntity;
}

Map<String, dynamic> $ArticleEntityToJson(ArticleEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['totalResults'] = entity.totalResults;
  data['articles'] = entity.articles.map((v) => v.toJson()).toList();
  return data;
}

extension ArticleEntityExtension on ArticleEntity {
  ArticleEntity copyWith({
    String? status,
    int? totalResults,
    List<Article>? articles,
  }) {
    return ArticleEntity()
      ..status = status ?? this.status
      ..totalResults = totalResults ?? this.totalResults
      ..articles = articles ?? this.articles;
  }
}

Article $ArticleArticlesFromJson(Map<String, dynamic> json) {
  final Article articleArticles = Article();
  final Source? source = jsonConvert.convert<
      Source>(json['source']);
  if (source != null) {
    articleArticles.source = source;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    articleArticles.author = author;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    articleArticles.title = title;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    articleArticles.description = description;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    articleArticles.url = url;
  }
  final String? urlToImage = jsonConvert.convert<String>(json['urlToImage']);
  if (urlToImage != null) {
    articleArticles.urlToImage = urlToImage;
  }
  final String? publishedAt = jsonConvert.convert<String>(json['publishedAt']);
  if (publishedAt != null) {
    articleArticles.publishedAt = publishedAt;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    articleArticles.content = content;
  }
  return articleArticles;
}

Map<String, dynamic> $ArticleArticlesToJson(Article entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['source'] = entity.source.toJson();
  data['author'] = entity.author;
  data['title'] = entity.title;
  data['description'] = entity.description;
  data['url'] = entity.url;
  data['urlToImage'] = entity.urlToImage;
  data['publishedAt'] = entity.publishedAt;
  data['content'] = entity.content;
  return data;
}

extension ArticleArticlesExtension on Article {
  Article copyWith({
    Source? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) {
    return Article()
      ..source = source ?? this.source
      ..author = author ?? this.author
      ..title = title ?? this.title
      ..description = description ?? this.description
      ..url = url ?? this.url
      ..urlToImage = urlToImage ?? this.urlToImage
      ..publishedAt = publishedAt ?? this.publishedAt
      ..content = content ?? this.content;
  }
}

Source $ArticleArticlesSourceFromJson(
    Map<String, dynamic> json) {
  final Source articleArticlesSource = Source();
  final dynamic id = json['id'];
  if (id != null) {
    articleArticlesSource.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    articleArticlesSource.name = name;
  }
  return articleArticlesSource;
}

Map<String, dynamic> $ArticleArticlesSourceToJson(
    Source entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension ArticleArticlesSourceExtension on Source {
  Source copyWith({
    dynamic id,
    String? name,
  }) {
    return Source()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}