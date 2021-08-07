import 'package:get/get.dart';
import 'package:proof_concept_2/app/data/models/class/grocerys_products.dart';

class GridVIewPageController extends GetxController {
  List<GroceryProducts> catalog = List.unmodifiable(groceryProducts);
}
