import 'package:get/get.dart';

enum SelectedTab { Home, Ofetrs, History, More }

class CustomNavigationBarController extends GetxController {
  SelectedTab _selectTab = SelectedTab.Home;
  SelectedTab get selectTab => _selectTab;

  handleIndexChanged(int i) {
    _selectTab = SelectedTab.values[i];
    update(["navbar"]);
  }
}
