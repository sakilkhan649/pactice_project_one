import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Model/foodItem.dart';

class NutritionController extends GetxController {
  var activeFilter = 'Protein'.obs;
  var foodItems = <FoodItem>[].obs;
  var isLoading = false.obs;

  final List<String> filters = ['All', 'Protein', 'Carbs', 'Fats'];

  @override
  void onInit() {
    super.onInit();
    loadFoodItems();
  }

  void loadFoodItems() {
    isLoading.value = true;

    Future.delayed(const Duration(milliseconds: 500), () {
      foodItems.value = [
        FoodItem(
          id: '1',
          name: 'CHICKEN BREAST',
          category: 'Protein',
          perServing: 'Pro 100g:',
          calories: 165,
          nutritionInfo: NutritionInfo(
            protein: 35,
            carbs: 75,
            fat: 5,
            fiber: 1,
            saturatedFat: 2,
            unsaturatedFat: 0,
          ),
        ),
        FoodItem(
          id: '2',
          name: 'RICE COOKED',
          category: 'Carbs',
          perServing: 'Pro 100g:',
          calories: 165,
          nutritionInfo: NutritionInfo(
            protein: 35,
            carbs: 75,
            fat: 5,
            fiber: 1,
            saturatedFat: 2,
            unsaturatedFat: 0,
          ),
        ),
        FoodItem(
          id: '3',
          name: 'AVOCADO',
          category: 'Fats',
          perServing: 'Pro 100g:',
          calories: 165,
          nutritionInfo: NutritionInfo(
            protein: 35,
            carbs: 75,
            fat: 5,
            fiber: 1,
            saturatedFat: 2,
            unsaturatedFat: 0,
          ),
        ),
      ];
      isLoading.value = false;
    });
  }

  List<FoodItem> get filteredItems {
    if (activeFilter.value == 'All') {
      return foodItems;
    }
    return foodItems.where((item) => item.category == activeFilter.value).toList();
  }

  void setFilter(String filter) {
    activeFilter.value = filter;
  }

  void addFoodItem(FoodItem item) {
    foodItems.add(item);
  }

  void removeFoodItem(String id) {
    foodItems.removeWhere((item) => item.id == id);
  }

  Color getCategoryColor(String category) {
    switch (category) {
      case 'Protein':
        return Colors.green;
      case 'Carbs':
        return Colors.blue;
      case 'Fats':
        return Colors.amber;
      default:
        return Colors.grey;
    }
  }
}