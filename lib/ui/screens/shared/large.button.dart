import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {

  final String buttonTitle;
  final VoidCallback onTap;

  const LargeButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(8)
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