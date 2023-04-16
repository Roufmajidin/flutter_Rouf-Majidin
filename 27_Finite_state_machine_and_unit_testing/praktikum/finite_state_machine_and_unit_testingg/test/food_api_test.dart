import 'package:finite_state_machine_and_unit_testingg/models/api/api_food.dart';
import 'package:finite_state_machine_and_unit_testingg/models/food_models.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([ApiFood])
void main() {
  group('ApiFood', () {
    // buat objek dari mock
    ApiFood apiFood = MockApiFood();
    test("Get all name mocking", () async {
      when(apiFood.getMockingApiTest()).thenAnswer(
        (_) async => <FoodModels>[FoodModels(id: 1, name: "Test Mocking")],
      );
      // cel hasilnya ada atau tidak
      var foodApi = await apiFood.getMockingApiTest();
      expect(foodApi.isNotEmpty, true);
    });
  });
}
