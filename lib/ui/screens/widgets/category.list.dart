import 'package:flutter/material.dart';
import 'package:news_app/domain/models/category.entity.dart';
import 'package:news_app/ui/screens/widgets/category.card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 300,
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
    );
  }
}