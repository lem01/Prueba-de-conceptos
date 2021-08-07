import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/global%20widgets/custom_navigation_bar/custom_navigation_bar.dart';
import 'package:proof_concept_2/app/global%20widgets/custom_navigation_bar/custom_navigation_bar_controller.dart';
import 'package:proof_concept_2/app/global%20widgets/my_page_view/my_page_view.dart';
import 'package:proof_concept_2/app/modules/cart_page/cart_page.dart';
import 'package:proof_concept_2/app/modules/home_page/local_widgets/my_appbar.dart';
import 'package:proof_concept_2/app/modules/tabs/history_tab_page/history_tab_page.dart';
import 'package:proof_concept_2/app/modules/tabs/home_tab_page/home_tab_page.dart';
import 'package:proof_concept_2/app/modules/tabs/more_tab_page/more_tab.dart';
import 'package:proof_concept_2/app/modules/tabs/ofterts_tab_page/oferts_tab_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return GetBuilder<CustomNavigationBarController>(
        id: "navbar",
        init: CustomNavigationBarController(),
        builder: (_) {
          return Scaffold(
            bottomNavigationBar: CustomNavigationBar(
              currentIndex: _.selectTab.index,
              onTap: _.handleIndexChanged,
            ),
            body: SafeArea(
                child: Container(
              color: Color(0xffF5F5F5),
              child: Column(
                children: [
                  MyAppBar(
                    rightIcon:
                        "https://image.flaticon.com/icons/png/512/964/964308.png",
                    leftIcon:
                        "https://image.flaticon.com/icons/png/512/1453/1453405.png",
                    onLeftClick: () {},
                    onRightClick: () {
                      Get.to(
                        CartPage(),
                        transition: Transition.cupertino,
                      );
                    },
                  ),
                  Expanded(
                    child: MyPageView(
                        currentPage: _.selectTab.index,
                        children: _bodyContent.map((item) => item).toList()),
                  ),
                ],
              ),
            )),
          );
        });
  }
}

//cargamos en una lista de widgets los tabs pages
final _bodyContent = [
  HomeTabPage(),
  OffertsTabPage(),
  HistoryTabPage(),
  MoreTabPage()
];
