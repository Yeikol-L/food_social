import 'package:flutter/material.dart';
import 'package:food_social/components/author_card.dart';
import 'package:food_social/models/explore_recipe.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.recipe});
  final ExploreRecipe recipe;
  // final String title = "Pancake";
  // final String image = "assets/magazine_pics/mag2.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(recipe.backgroundImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
         AuthorCard(
          authorName: recipe.authorName,
          title: "Smothies connosieur",
          imageProvider: AssetImage(recipe.authorImage),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(recipe.title,
                      style: Theme.of(context).textTheme.bodyLarge)),
              Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(recipe.subtitle,
                          style: Theme.of(context).textTheme.bodyLarge)))
            ],
          ),
        )
      ]),
    );
  }
}
