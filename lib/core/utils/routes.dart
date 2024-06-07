import 'package:flutter/cupertino.dart';
import 'package:news_app/features/home/presentation/screens/home.screen.dart';
import 'package:news_app/features/category/presentation/screens/category.screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomeScreen.route: (context) => const HomeScreen(),
  CategoryScreen.route: (context) => const CategoryScreen()
};