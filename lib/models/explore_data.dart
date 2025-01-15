import 'package:food_social/models/explore_recipe.dart';
import 'package:food_social/models/post.dart';

class ExploreData {
  final List<ExploreRecipe> recipes;
  final List<Post> friendPosts;

  ExploreData({required this.recipes, required this.friendPosts});

}