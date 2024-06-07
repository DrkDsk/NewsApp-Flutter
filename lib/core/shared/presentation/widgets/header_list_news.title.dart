import 'package:flutter/material.dart';
import 'package:news_app/features/article/presentation/providers/news.viewmodel.dart';
import 'package:provider/provider.dart';

class HeaderListNewsTitle extends StatelessWidget {

  const HeaderListNewsTitle({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value.headerListNewsTitle.toUpperCase(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700
              ),
            )
          ],
        );
      },
    );
  }
}