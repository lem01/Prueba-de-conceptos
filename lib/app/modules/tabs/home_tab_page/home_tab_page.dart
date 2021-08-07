import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:proof_concept_2/app/data/models/class/products_model.dart';
import 'package:proof_concept_2/app/data/models/class/store_content_model.dart';
import 'package:proof_concept_2/app/modules/detail_page/detail_page.dart';
import 'package:proof_concept_2/app/modules/tabs/home_tab_page/local_widgests/my_card_item_view.dart';
import 'package:proof_concept_2/app/modules/tabs/home_tab_page/local_widgests/my_card_view.dart';
import 'package:proof_concept_2/app/modules/top_page/top_page.dart';
import 'package:shimmer/shimmer.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  bool _isLoading = false;
  var products;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future loadData() async {
    setState(() => _isLoading = true);
    await Future.delayed(Duration(seconds: 3), () {});
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final _styleBold = TextStyle(fontWeight: FontWeight.bold);
    final _styleTitle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

    List<ProductsModel> productTop = listTopProductElectronic;

    SliverList _sliverList = new SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final _item = listStoreContent.elementAt(index);
          return Container(
            height: 200,
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 6),
            decoration: BoxDecoration(color: Colors.white10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 3.0, bottom: 3.0),
                  child: Text(
                    _item.tipoLista,
                    style: _styleTitle,
                  ),
                ),
                Expanded(
                  child: _isLoading
                      ? Shimmer.fromColors(
                          baseColor: Colors.grey[500]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: _item.list.length,
                              itemBuilder: (BuildContext context, int j) {
                                return GestureDetector(
                                  onTap: () {
                                    print(
                                        "lista 1 = list_${_item.list.elementAt(j).name}_$j");
                                    Get.to(
                                      DetailPage(
                                        product: _item.list.elementAt(j),
                                        positionItem: j,
                                      ),
                                      transition: Transition.cupertino,
                                      curve: Curves.linearToEaseOut,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    );
                                  },
                                  child: Card(
                                    margin: EdgeInsets.only(right: 10),
                                    elevation: 0,
                                    child: Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 100,
                                                width: 100,
                                                child: FadeInImage(
                                                  // fadeInDuration: Duration(seconds: 5),
                                                  placeholder: AssetImage(
                                                      'assets/images/loading.gif'),
                                                  image: NetworkImage(
                                                    _item.list
                                                        .elementAt(j)
                                                        .posterURL,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              // child: Hero(
                                              //   tag:
                                              //       "list_${item.list.elementAt(j).name}_$j",
                                              //   child: Image.network(
                                              //     item.list.elementAt(j).posterURL,
                                              //     fit: BoxFit.contain,
                                              //   ),
                                              // ),
                                            ),
                                            Text(_item.list.elementAt(j).name),
                                            Container(
                                              width: 100,
                                              child: Text(
                                                _item.list
                                                    .elementAt(j)
                                                    .description,
                                                softWrap: true,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Text(
                                              _item.list
                                                  .elementAt(j)
                                                  .price
                                                  .toString(),
                                              style: _styleBold,
                                            ),
                                          ],
                                        )),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: _item.list.length,
                            itemBuilder: (BuildContext context, int j) {
                              return GestureDetector(
                                onTap: () {
                                  print(
                                      "lista 1 = list_${_item.list.elementAt(j).name}_$j");
                                  Get.to(
                                    DetailPage(
                                      product: _item.list.elementAt(j),
                                      positionItem: j,
                                    ),
                                    transition: Transition.cupertino,
                                    curve: Curves.linearToEaseOut,
                                    duration: const Duration(milliseconds: 500),
                                  );
                                },
                                child: Card(
                                  margin: EdgeInsets.only(right: 10),
                                  elevation: 0,
                                  child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 50,
                                              width: 120,
                                              child: FadeInImage(
                                                // fadeInDuration: Duration(seconds: 5),
                                                placeholder: AssetImage(
                                                    'assets/images/loading.gif'),
                                                image: NetworkImage(
                                                  _item.list
                                                      .elementAt(j)
                                                      .posterURL,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            // child: Hero(
                                            //   tag:
                                            //       "list_${item.list.elementAt(j).name}_$j",
                                            //   child: Image.network(
                                            //     item.list.elementAt(j).posterURL,
                                            //     fit: BoxFit.contain,
                                            //   ),
                                            // ),
                                          ),
                                          Text(_item.list.elementAt(j).name),
                                          Container(
                                            width: 100,
                                            child: Text(
                                              _item.list
                                                  .elementAt(j)
                                                  .description,
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            _item.list
                                                .elementAt(j)
                                                .price
                                                .toString(),
                                            style: _styleBold,
                                          ),
                                        ],
                                      )),
                                ),
                              );
                            },
                          ),
                        ),
                ),
              ],
            ),
          );
        },
        childCount: listStoreContent.length,
      ),
    );

    MyCardItemView _itemCard1 = new MyCardItemView(
      label: productTop[0].name,
      price: productTop[0].price,
      description: productTop[0].description,
      imageNetwork: productTop[0].posterURL,
    );
    MyCardItemView _itemCard2 = new MyCardItemView(
      label: productTop[1].name,
      price: productTop[1].price,
      description: productTop[1].description,
      imageNetwork: productTop[1].posterURL,
    );
    MyCardItemView _itemCard3 = new MyCardItemView(
      label: productTop[2].name,
      price: productTop[2].price,
      description: productTop[2].description,
      imageNetwork: productTop[2].posterURL,
    );

    MyCardVIew _cardTopSales = new MyCardVIew(
      onPressed: () => Get.to(
        TopPage(),
        transition: Transition.cupertino,
      ),
      label: "Top Ventas",
      item1: _itemCard1,
      item2: _itemCard2,
      item3: _itemCard3,
    );
    MyCardVIew _cardTopElctronics = new MyCardVIew(
      onPressed: () => Get.to(
        TopPage(),
        transition: Transition.cupertino,
      ),
      label: "Top Electronicos",
      item1: _itemCard1,
      item2: _itemCard2,
      item3: _itemCard3,
    );

    return CustomScrollView(
      slivers: <Widget>[
        _cardTopSales,
        _cardTopElctronics,
        _sliverList,
        // _sliverGrid
      ],
    );
  }
}
