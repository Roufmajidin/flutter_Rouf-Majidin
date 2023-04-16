import 'package:finite_state_machine_and_unit_testingg/models/api/api_food.dart';
import 'package:flutter/widgets.dart';

import '../models/food_models.dart';

enum FoodViewState {
  none,
  loading,
  loaded,
  error,
}

class FoodProvider extends ChangeNotifier {
  //! 1. buat state
  FoodViewState _state = FoodViewState.none;
  //! 1. buat getter dari state
  FoodViewState get state => _state;

  List<FoodModels> _food = [];
  List<FoodModels> get foods => _food;
  // objek
  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  Future<void> fetchFood() async {
    changeState(FoodViewState.loaded);
    try {
      final result = await ApiFood.getFoods();
      _food = result;
      print(result.length);
      notifyListeners();
    } catch (e) {
      changeState(FoodViewState.error);
      print(e);
    }
  }
}
