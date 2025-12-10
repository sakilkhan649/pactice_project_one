
class FoodItem {
  final String id;
  final String name;
  final String category;
  final String perServing;
  final int calories;
  final NutritionInfo nutritionInfo;

  FoodItem({
    required this.id,
    required this.name,
    required this.category,
    required this.perServing,
    required this.calories,
    required this.nutritionInfo,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return FoodItem(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      perServing: json['perServing'],
      calories: json['calories'],
      nutritionInfo: NutritionInfo.fromJson(json['nutritionInfo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'perServing': perServing,
      'calories': calories,
      'nutritionInfo': nutritionInfo.toJson(),
    };
  }
}

// models/nutrition_info.dart

class NutritionInfo {
  final int protein;
  final int carbs;
  final int fat;
  final int fiber;
  final int saturatedFat;
  final int unsaturatedFat;

  NutritionInfo({
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.saturatedFat,
    required this.unsaturatedFat,
  });

  factory NutritionInfo.fromJson(Map<String, dynamic> json) {
    return NutritionInfo(
      protein: json['protein'],
      carbs: json['carbs'],
      fat: json['fat'],
      fiber: json['fiber'],
      saturatedFat: json['saturatedFat'],
      unsaturatedFat: json['unsaturatedFat'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'protein': protein,
      'carbs': carbs,
      'fat': fat,
      'fiber': fiber,
      'saturatedFat': saturatedFat,
      'unsaturatedFat': unsaturatedFat,
    };
  }
}