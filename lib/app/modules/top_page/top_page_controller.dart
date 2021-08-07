import 'package:get/get.dart';
import 'package:proof_concept_2/app/data/models/class/products_model.dart';

class TopPageController extends GetxController {
  var list = listTopProductElectronic;
  List<ProductsModel> catalog = [];
  addItem() {
    for (var item in listTopProductElectronic) {
      catalog.add(item);
    }
  }

  @override
  void onInit() {
    addItem();
    addItem();
    addItem();
    super.onInit();
  }
}
