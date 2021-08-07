import 'package:get/get.dart';

import 'grid_view_page_controller.dart';

class GridViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GridVIewPageController());
  }
}
