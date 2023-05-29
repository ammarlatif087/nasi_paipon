import '../../app/index.dart';

class SelectFoodCategoryViewModel extends ChangeNotifier {
  List<String> selectedCategories = [];
  List<String> foodCategories = [
    'Rice',
    'Bread',
    'Pasta',
    'Pizza',
    'Burger',
    'Salad',
    'Soup',
    'Rice',
    'Bread',
    'Pasta',
    'Pizza',
    'Burger',
    'Salad',
    'Soup',
    'Rice',
    'Bread',
    'Pasta',
    'Pizza',
    'Burger',
    'Salad',
    'Soup',
    'Rice',
    'Bread',
    'Pasta',
    'Pizza',
    'Burger',
    'Salad',
    'Soup',
  ];

  void toggleCategory(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
    notifyListeners();
  }
}
