import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/widgets/articles.list.dart';
import 'package:news_app/ui/screens/widgets/category.list.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  late NewsViewModel newsViewModel;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20,),
          CategoryList(),
          ArticlesList()
        ],
      ),
    );
  }
}
