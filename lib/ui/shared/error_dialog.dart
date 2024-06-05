import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/home/home.screen.dart';

class ErrorDialog extends StatelessWidget {

  final NewsViewModel newsViewModel;

  const ErrorDialog({
    super.key,
    required this.newsViewModel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red.shade600,
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "An error occurred, try again later",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    shape: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    onPressed: () {
                      context.goNamed(HomeScreen.route);
                      Navigator.of(context).pop();
                    },
                    color: Colors.red.shade600,
                    height: 40,
                    child: const Text(
                      "Try Again",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        )
      ),
    );
  }
}
