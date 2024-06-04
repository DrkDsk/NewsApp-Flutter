import 'package:flutter/material.dart';

class ArticleContentText extends StatelessWidget {

  final String description;

  const ArticleContentText({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Text(description,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        )
    );
  }
}