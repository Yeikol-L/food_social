import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_social/models/explore_data.dart';
import 'package:food_social/models/explore_recipe.dart';
import 'package:food_social/models/post.dart';
import 'package:food_social/models/simple_recipe.dart';

class ApiService {
  Future<String> _loadAssets(String path) async {
    return rootBundle.loadString(path);
  }

  Future<List<SimpleRecipe>> getRecipes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final data = await _loadAssets('assets/sample_data/recipes.json');
    final json = jsonDecode(data);
    final recipes = json["recipes"] as List;
    if (json["recipes"] == null) {
      return [];
    }
    return recipes.map((x) => SimpleRecipe.fromJson(x)).toList();
  }

  Future<List<Post>> _getFriendPosts() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final data =
        await _loadAssets('assets/sample_data/sample_friends_feed.json');
    final json = jsonDecode(data);
    final feed = json["feed"] as List;
    if (json["feed"] == null) {
      return [];
    }
    return feed.map((x) => Post.fromJson(x)).toList();
  }

  Future<List<ExploreRecipe>> _getExploreRecipe() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final data =
        await _loadAssets('assets/sample_data/sample_explore_recipes.json');
    final json = jsonDecode(data);
    final feed = json["recipes"] as List;
    if (json["recipes"] == null) {
      return [];
    }
    return feed.map((x) => ExploreRecipe.fromJson(x)).toList();
  }

  Future<ExploreData> getExploreDate() async {
    final recipes = await _getExploreRecipe();
    final friendPosts = await _getFriendPosts();
    return ExploreData(recipes: recipes, friendPosts: friendPosts);
  }
}
