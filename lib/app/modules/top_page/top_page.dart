import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/modules/top_page/top_page_controller.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TopPageController>(
        init: TopPageController(),
        builder: (__) => Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    CupertinoIcons.back,
                  ),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                ],
                elevation: 0,
                backgroundColor: Color(0xffF5F5F5),
                title: Center(
                  child: Text(
                    "Seguro te gusta!",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              body: SafeArea(
                  child: Container(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(
                      child: StaggeredGridView.countBuilder(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          itemCount: __.catalog.length,
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.0,
                          mainAxisSpacing: 2.0,
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 0,
                                    shadowColor: Colors.black45,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: FadeInImage(
                                            // fadeInDuration: Duration(seconds: 5),
                                            placeholder: AssetImage(
                                                'assets/images/loading.gif'),
                                            image:
                                                NetworkImage(product.posterURL),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text('${product.name}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                      color: Colors.black)),
                                              Text(
                                                '${product.description}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                    color: Colors.black),
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                              ),
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
                ),
              )),
            ));
  }
}
