import 'package:flutter/material.dart';
import 'package:news_app/ui/resources/colors.dart';
import 'package:news_app/ui/screens/article/widgets/articles.container.dart';
import 'package:news_app/ui/screens/home/widgets/header_list_news.title.dart';

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
          child: const ArticlesContainer(),
        ),
      ),
    );
  }
}
