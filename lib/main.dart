import 'package:flutter/material.dart';
import 'package:food_social/models/nav_item.dart';
import 'package:food_social/pages/categories.dart';
import 'package:food_social/pages/home.dart';

void main() {
  runApp(const FoodSocial());
}

final navItems = [
  NavItem(icon: const Icon(Icons.home), label: "Home"),
  NavItem(icon: const Icon(Icons.category), label: "Categorias"),
  NavItem(icon: const Icon(Icons.food_bank), label: "Recipes"),
];

class FoodSocial extends StatelessWidget {
  const FoodSocial({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Social',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Main(title: 'Food Social'),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key, required this.title});

  final String title;

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int pageIndex = 0;
  final pages = [const HomePage(), const CategoriesPage()];

  void changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: pageIndex,
          onTap: (index) => changePage(index),
          items: navItems
              .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
              .toList()),
    );
  }
}
