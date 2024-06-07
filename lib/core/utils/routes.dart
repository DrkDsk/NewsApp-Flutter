import 'package:flutter/cupertino.dart';
import 'package:news_app/ui/screens/home/home.screen.dart';
import 'package:news_app/ui/screens/categories/category.screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomeScreen.route: (context) => const HomeScreen(),
  CategoryScreen.route: (context) => const CategoryScreen()
};