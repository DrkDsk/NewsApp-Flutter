import 'package:flutter/material.dart';
import 'package:news_app/features/article/presentation/widgets/article.container.dart';
import 'package:news_app/core/constants/colors.dart';
import 'package:news_app/core/shared/presentation/widgets/header_list_news.title.dart';

class HomeScreen extends StatefulWidget {

  static const String route = "Home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const HeaderListNewsTitle(),
      ),
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: const ArticleContainer(),
        ),
      ),
    );
  }
}
