import 'package:flutter/material.dart';
import 'package:news_app/ui/resources/colors.dart';

class ArticleCard extends StatelessWidget {

  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("images/enter.jpg")
                )
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text(
                        "Colo Colo informó sobre la gravedad de la lesión de Maxi Falcón - ESPN",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        softWrap: false,
                        style: TextStyle(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "ESPN",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins"
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,//change background color of button
                              backgroundColor: secondaryColor,
                            ),
                            onPressed: () {},
                            child: const Text("Detalles")
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
