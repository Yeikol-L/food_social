class Ingredient {
  final String imageUrl;
  final String title;
  final String source;

  Ingredient({
    required this.imageUrl,
    required this.title,
    required this.source,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      imageUrl: json['imageUrl'],
      title: json['title'],
      source: json['source'],
    );
  }
}

class Instruction {
  final String imageUrl;
  final String description;
  final int durationInMinutes;

  Instruction({
    required this.imageUrl,
    required this.description,
    required this.durationInMinutes,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return Instruction(
      imageUrl: json['imageUrl'],
      description: json['description'],
      durationInMinutes: json['durationInMinutes'],
    );
  }
}

class ExploreRecipe {
  final String id;
  final String cardType;
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String backgroundImageSource;
  final String message;
  final String authorName;
  final String role;
  final String authorImage;
  final int durationInMinutes;
  final String dietType;
  final int calories;
  final List<String> tags;
  final String description;
  final String source;
  final List<Ingredient> ingredients;
  final List<Instruction> instructions;

  ExploreRecipe({
    required this.id,
    required this.cardType,
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.backgroundImageSource,
    required this.message,
    required this.authorName,
    required this.role,
    required this.authorImage,
    required this.durationInMinutes,
    required this.dietType,
    required this.calories,
    required this.tags,
    required this.description,
    required this.source,
    required this.ingredients,
    required this.instructions,
  });
  factory ExploreRecipe.fromJson(Map<String, dynamic> json) {
    return ExploreRecipe(
      id: json['id'],
      cardType: json['cardType'],
      title: json['title'],
      subtitle: json['subtitle'],
      backgroundImage: json['backgroundImage'],
      backgroundImageSource: json['backgroundImageSource'],
      message: json['message'],
      authorName: json['authorName'],
      role: json['role'],
      authorImage: json['authorImage'],
      durationInMinutes: json['durationInMinutes'],
      dietType: json['dietType'],
      calories: json['calories'],
      tags: List<String>.from(json['tags']),
      description: json['description'],
      source: json['source'],
      ingredients: List<Ingredient>.from(json['ingredients']
          .map((ingredientJson) => Ingredient.fromJson(ingredientJson))),
      instructions: List<Instruction>.from(json['instructions']
          .map((instructionJson) => Instruction.fromJson(instructionJson))),
    );
  }
}
