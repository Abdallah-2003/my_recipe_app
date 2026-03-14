class DetailModel {
  final String idMeal;
  final String? name;
  final String? category;
  final String? area;
  final String? image;
  final String? tags;
  final String? youtube;

  final List<String> ingredients;
  final List<String> instructions;

  DetailModel({
    required this.idMeal,
    this.name,
    this.category,
    this.area,
    this.image,
    this.tags,
    this.youtube,
    required this.ingredients,
    required this.instructions,
  });

  factory DetailModel.fromJson(Map<String, dynamic> json) {

    /// INGREDIENTS
    List<String> ingredients = [];

    for (int i = 1; i <= 20; i++) {
      final ingredient = json['strIngredient$i'];
      final measure = json['strMeasure$i'];

      if (ingredient != null && ingredient.toString().trim().isNotEmpty) {
        ingredients.add('${measure ?? ''} $ingredient'.trim());
      }
    }

    String rawInstructions = json['strInstructions'] ?? '';

    List<String> instructions = rawInstructions
        .split('.')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .map((e) => '$e.') 
        .toList();

    return DetailModel(
      idMeal: json['idMeal'],
      name: json['strMeal'],
      category: json['strCategory'],
      area: json['strArea'],
      image: json['strMealThumb'],
      tags: json['strTags'],
      youtube: json['strYoutube'],
      ingredients: ingredients,
      instructions: instructions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idMeal': idMeal,
      'strMeal': name,
      'strCategory': category,
      'strArea': area,
      'strMealThumb': image,
      'strTags': tags,
      'strYoutube': youtube,
      'ingredients': ingredients,
      'instructions': instructions,
    };
  }
}