import 'package:flutter/material.dart';

class LargeOrangeButton extends StatelessWidget {

  final String buttonTitle;

  const LargeOrangeButton({
    super.key,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: GestureDetector(
        onTap: () {
          print("clickedd");
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
              child: Text(
                buttonTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins'
                ),
              )
          ),
        ),
      ),
    );
  }
}