import 'package:flutter/material.dart';
import 'package:news_app/domain/models/category.entity.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/widgets/category.card.dart';
import 'package:provider/provider.dart';

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
    newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
    newsViewModel.fetchTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {

    newsViewModel = Provider.of<NewsViewModel>(context);

    return SafeArea(
      child: newsViewModel.isLoading ? 
        const CircularProgressIndicator() :  Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 400,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              scrollDirection: Axis.horizontal,
              itemCount: categoryItems.length,
              itemBuilder: (BuildContext context, index)  {
                CategoryItem item = categoryItems.elementAt(index);
                return CategoryCard(imageAsset: item.imageAsset, title: item.title);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
