import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(5,5)
              ),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5,-5)
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Colors.grey[500],
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 24
                )
            ),
          ),
        ),
      ),
    );
  }
}