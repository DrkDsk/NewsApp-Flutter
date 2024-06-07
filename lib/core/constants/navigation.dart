import 'package:flutter/material.dart';
import 'package:news_app/features/category/presentation/screens/category.screen.dart';
import 'package:news_app/features/home/presentation/screens/home.screen.dart';
import 'package:news_app/features/search/presentation/screens/search.screen.dart';

List<BottomNavigationBarItem> bottomNavigationBarItems = [
  const BottomNavigationBarItem(
      label: HomeScreen.route,
      icon: Icon(
          Icons.home
      )
  ),
  const BottomNavigationBarItem(
      label: CategoryScreen.route,
      icon: Icon(
          Icons.category
      )
  ),
  const BottomNavigationBarItem(
      label: SearchScreen.route,
      icon: Icon(
          Icons.search
      )
  )
];