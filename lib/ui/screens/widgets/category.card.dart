import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String imageAsset;
  final String title;

  const CategoryCard({
    super.key,
    required this.imageAsset,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageAsset),
          onError: (error, stackTrace) {},
          fit: BoxFit.cover
        ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0,3)
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 35,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
