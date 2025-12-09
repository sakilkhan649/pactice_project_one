
// ==================== CONTROLLER ====================
import 'package:get/get.dart';

import '../model/model.dart';

class ExerciseController extends GetxController {
  final exercises = <ExerciseModel>[
    ExerciseModel(
      title: "BENCH PRESS",
      category: "Chest",
      equipment: "Barbell",
      muscles: ["Chest", "Triceps", "Shoulders"],
    ),
    ExerciseModel(
      title: "SHOULDER PRESS",
      category: "Shoulders",
      equipment: "Barbell",
      muscles: ["Triceps", "Shoulders"],
    ),
    ExerciseModel(
      title: "DEADLIFT",
      category: "Back",
      equipment: "Barbell",
      muscles: ["Back", "Legs"],
    ),
    ExerciseModel(
      title: "SQUAT",
      category: "Legs",
      equipment: "Barbell",
      muscles: ["Legs", "Glutes"],
    ),
  ].obs;

  final searchText = ''.obs;
  final selectedCategory = 'All'.obs;

  // Filter exercises based on category and search
  List<ExerciseModel> get filteredExercises {
    var result = exercises.toList();

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