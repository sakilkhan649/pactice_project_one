
// ==================== CONTROLLER ====================
import 'package:get/get.dart';
import 'package:newproject/views/home_screens/diet_screen/food_Items_screen/Model/foodItem.dart';

class FoodItemController extends GetxController {
  final foodItems = <FooditemModel>[
    FooditemModel(
      title: "CHICKEN BREAST",
      category: "Protein",
      kcal: "165 kcal",
      p: "P:35g",
      c: "C:75g",
      f: "F:5g",
      fi: "Fi:2g",
      sat: "Sat:0g",
      unSat: "UnSat:1g",
    ),
    FooditemModel(
      title: "RICE COOKED",
      category: "Carbs",
      kcal: "165 kcal",
      p: "P:35g",
      c: "C:75g",
      f: "F:5g",
      fi: "Fi:2g",
      sat: "Sat:0g",
      unSat: "UnSat:1g",
    ),
    FooditemModel(
      title: "AVOCADO",
      category: "Fats",
      kcal: "165 kcal",
      p: "P:35g",
      c: "C:75g",
      f: "F:5g",
      fi: "Fi:2g",
      sat: "Sat:0g",
      unSat: "UnSat:1g",
    ),
    FooditemModel(
      title: "AVOCADO",
      category: "Fiber",
      kcal: "165 kcal",
      p: "P:35g",
      c: "C:75g",
      f: "F:5g",
      fi: "Fi:2g",
      sat: "Sat:0g",
      unSat: "UnSat:1g",
    ),
    FooditemModel(
      title: "Whey Protein",
      category: "Supplements",
      kcal: "165 kcal",
      p: "P:35g",
      c: "C:75g",
      f: "F:5g",
      fi: "Fi:2g",
      sat: "Sat:0g",
      unSat: "UnSat:1g",
    ),
  ].obs;

  final searchText = ''.obs;
  final selectedCategory = 'All'.obs;

  // Filter exercises based on category and search
  List<FooditemModel> get filtererFoodItem {
    var result = foodItems.toList();

    // Filter by category
    if (selectedCategory.value != 'All') {
      result = result.where((e) => e.category == selectedCategory.value).toList();
    }

    // Filter by search text
    if (searchText.value.isNotEmpty) {
      result = result.where((e) =>
          e.title.toLowerCase().contains(searchText.value.toLowerCase())
      ).toList();
    }

    return result;
  }
}