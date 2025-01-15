import 'package:flutter/material.dart';
import 'package:food_social/models/explore_recipe.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card3({super.key, required this.recipe});

  List<Widget> createTagChips() {
    return recipe.tags
        .take(6)
        .map((e) => Chip(
              label: Text(e),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Todo")));
  }
}
