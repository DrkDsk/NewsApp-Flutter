import 'package:flutter/material.dart';

class LatestNewTitle extends StatelessWidget {

  final String text;

  const LatestNewTitle({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}