import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:provider/provider.dart';

class HeaderListNewsTitle extends StatelessWidget {

  const HeaderListNewsTitle({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.headerListNewsTitle.toUpperCase(),
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
        );
      },
    );
  }
}