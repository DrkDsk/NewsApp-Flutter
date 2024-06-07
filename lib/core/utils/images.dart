import 'package:flutter/material.dart';

ImageProvider getDefaultArticleImage(String source) {

  if (source.isEmpty) {
    return Image.asset("images/default_article_image.jpg").image;
  }

  return Image.network(source).image;
}