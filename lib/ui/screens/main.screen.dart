import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/article/widgets/articles.listview.dart';
import 'package:news_app/ui/screens/home/widgets/latest_news_title.dart';
import 'package:news_app/ui/views/bottom.navigation.bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NewsBottomNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            LatestNewTitle(text: "Latest news"),
            ArticlesListView()
          ],
        ),
      ),
    );
  }
}
