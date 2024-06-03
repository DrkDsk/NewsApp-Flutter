import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArticleCard extends StatelessWidget {

  final String title;
  final String author;
  final String imageUrl;

  const ArticleCard({
    super.key,
    required this.title,
    required this.author,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed('article');
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
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
              vertical: 15,
              horizontal: 15
          ),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 4 - 10,
                width: MediaQuery.of(context).size.width / 4 - 10,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(imageUrl),
                    onError: (error, stackTrace) {}
                  )
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          softWrap: false,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins"
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          author,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Poppins"
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
