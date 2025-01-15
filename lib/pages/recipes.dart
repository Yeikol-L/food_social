import 'package:flutter/material.dart';
import 'package:food_social/models/simple_recipe.dart';
import 'package:food_social/services/api_service.dart';
import 'package:food_social/components/card1.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({Key? key}) : super(key: key);

  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  late Future<List<SimpleRecipe>> _recipesFuture;

  @override
  void initState() {
    super.initState();
    _recipesFuture = ApiService().getRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SimpleRecipe>>(
      future: _recipesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No recipes found'));
        } else {
          final recipes = snapshot.data!;
          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card1(recipe: recipes[index]),
              );
            },
          );
        }
      },
    );
  }
}