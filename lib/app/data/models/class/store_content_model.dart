import 'package:proof_concept_2/app/data/models/class/products_model.dart';

class StoreContentModel {
  final List<ProductsModel> list;
  final String tipoLista;
  StoreContentModel({required this.list, required this.tipoLista});
}

List<StoreContentModel> listStoreContent = [
  new StoreContentModel(list: listProduc1, tipoLista: "Populares"),
  new StoreContentModel(
      list: listProduct2, tipoLista: "Nuestra seleccion para Guillermo"),
  // new StoreContentModel(
  //     list: listMovieAnimadas, tipoLista: "Peliculas Animadas"),
  // new StoreContentModel(list: listMovieSeries, tipoLista: "Series"),
];
