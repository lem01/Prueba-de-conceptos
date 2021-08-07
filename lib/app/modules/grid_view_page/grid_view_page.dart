import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'grid_view_page_controller.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GridVIewPageController>(
        init: GridVIewPageController(),
        builder: (__) => Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),

                // leading: IconButton(
                //   onPressed: () => Get.back(),
                //   icon: Icon(Icons.arrow_back),
                // ),
                actions: [
                  IconButton(onPressed: () => null, icon: Icon(Icons.settings))
                ],
                elevation: 0,
                backgroundColor: Color(0xffF5F5F5),
                title: Center(
                  child: Text(
                    "Prueba de gridView",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              body: SafeArea(
                  child: Column(
                children: [
                  Expanded(
                    child: StaggeredGridView.countBuilder(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        itemCount: __.catalog.length,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 5.0,
                        itemBuilder: (context, index) {
                          //product servira para mostar los datos
                          final product = __.catalog[index];
                          return Transform.translate(
                            offset: Offset(0.0, index.isOdd ? 60 : 0.0),
                            child: Container(
                              child: GestureDetector(
                                onTap: () {},
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  elevation: 5,
                                  shadowColor: Colors.black45,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                          child: Hero(
                                        tag: 'list_${product.name}',
                                        child: FadeInImage(
                                          // fadeInDuration: Duration(seconds: 5),
                                          placeholder: AssetImage(
                                              'assets/images/loading.gif'),
                                          image: AssetImage(product.image),
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        padding: EdgeInsets.only(
                                            left: 20, bottom: 12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('\$${product.price}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.black)),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text('${product.name}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.black)),
                                            Text('${product.wheight}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                    color: Colors.grey)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        staggeredTileBuilder: (index) {
                          return StaggeredTile.count(1, 1.3);
                        }),
                  ),
                ],
              )),
            ));
  }
}
