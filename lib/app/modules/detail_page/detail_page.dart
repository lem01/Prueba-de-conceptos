import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/data/models/class/products_model.dart';

class DetailPage extends StatefulWidget {
  // final VoidCallback onProductAdded;
  final ProductsModel product;
  final int positionItem;

  DetailPage({
    Key? key,
    required this.product,
    required this.positionItem,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    print("lista 2 = list_${widget.product.name}_${widget.positionItem}");
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Hero(
                    //   tag: "list_${widget.product.name}_${widget.positionItem}",
                    //   child: Image.network(widget.product.posterURL,
                    //       fit: BoxFit.contain,
                    //       height: MediaQuery.of(context).size.height * 0.3),
                    // ),
                    // en reparacion
                    // Hero(
                    //   tag: 'list_${widget.product.name}$heroTag',
                    //   child: Image.network(widget.product.image,
                    //       fit: BoxFit.contain,
                    //       height: MediaQuery.of(context).size.height * 0.3),
                    // ),
                    Image.network(widget.product.posterURL,
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.3),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.product.name,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),

                    // Text(
                    //   widget.product.wheight,
                    //   style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    //       color: Colors.grey, fontWeight: FontWeight.bold),
                    // ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          '\$${widget.product.price.toString()}',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'About the Procuct',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.product.description,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: Icon(Icons.favorite), onPressed: () => null),
                  ),
                  Expanded(
                    flex: 4,
                    child: CupertinoButton(
                      color: Color(0xfff4c459),
                      borderRadius: BorderRadius.circular(25),
                      onPressed: () {
                        // En reparacion
                        // _addToCart(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.0),
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  //     flex: 4,
                  //     child: RaisedButton(
                  //       color: Color(0xfff4c459),
                  //       onPressed: () {
                  //         _addToCart(context);
                  //       },
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(25)),
                  //       child: Padding(
                  //         padding: EdgeInsets.symmetric(vertical: 15.0),
                  //         child: Text(
                  //           'Add to Cart',
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //           ),
                  //         ),
                  //       ),
                  //     ))
                ],
              ),
            )
          ],
        ));
  }
}
