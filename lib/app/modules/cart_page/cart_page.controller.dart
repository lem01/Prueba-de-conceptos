import 'package:get/get.dart';
import 'package:proof_concept_2/app/data/models/class/products_model.dart';

class CartPageController extends GetxController {
  // var list = listTopProductElectronic;
  // List<ProductsModel> catalog = List.unmodifiable(listTopProductElectronic);
  List<ProductsModel> catalog = [];
  addItem() {
    for (var item in listTopProductElectronic) {
      catalog.add(item);
    }
  }

  @override
  void onInit() {
    addItem();

    super.onInit();
  }
}
