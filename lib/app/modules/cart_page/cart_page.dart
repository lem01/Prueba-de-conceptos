import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/modules/cart_page/cart_page.controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _styleTitle = TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5);

    return GetBuilder<CartPageController>(
      init: CartPageController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          // foregroundColor: Colors.black,
          iconTheme: IconThemeData.fallback(),
          centerTitle: true,
          title: Text(
            "Carrito de compras",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              CupertinoIcons.back,
            ),
          ),

          elevation: 0,
          backgroundColor: Color(0xffF5F5F5),
        ),
        body: SafeArea(
          child: Container(
            color: Color(0xffF5F5F5),
            child: ListView.builder(
              itemCount: _.catalog.length,
              itemBuilder: (context, index) {
                final _product = _.catalog[index];
                return Container(
                  padding: EdgeInsets.only(right: 10, left: 8, top: 8),
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: FadeInImage(
                              placeholder:
                                  AssetImage('assets/images/loading.gif'),
                              image: NetworkImage(_product.posterURL),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 105,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${_product.name}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(CupertinoIcons.left_chevron)),
                                Text("1"),
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(CupertinoIcons.right_chevron))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        width: 100,
                        child: Text(
                          "C\$15000.0",
                          style: _styleTitle,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
