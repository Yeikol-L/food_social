import 'package:flutter/material.dart';
import 'package:food_social/components/food_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Center(child: FoodCard(),),
    );
  }
}
