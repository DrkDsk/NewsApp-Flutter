import 'package:flutter/material.dart';
import 'package:news_app/ui/resources/colors.dart';
import 'package:news_app/ui/screens/main.screen.dart';

class HomeScreen extends StatefulWidget {

  static const String route = "home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: primaryColor,
      body: MainScreen(),
    );
  }
}
