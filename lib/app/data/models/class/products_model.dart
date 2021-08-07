// class Products {
//   final double price;
//   final String name;
//   final String description;
//   final String image;

//   const Products({
//     required this.price,
//     required this.description,
//     required this.name,
//     required this.image,
//   });
// }

// const groceryProducts = <Products>[
//   Products(
//       price: 5.0,
//       name: 'bananas',
//       description: 'the avogado is flesy fruit',
//       image: 'assets/fruist_list/bananas.png'),
//   Products(
//     price: 12.0,
//     name: 'aguacate',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/aguacate.png',
//   ),
//   Products(
//     price: 4.0,
//     name: 'cereza',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/cereza.png',
//   ),
//   Products(
//     price: 8.0,
//     name: 'durazno',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/durazno.png',
//   ),
//   Products(
//     price: 1.0,
//     name: 'fresa',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/fresa.png',
//   ),
//   Products(
//     price: 15.0,
//     name: 'mango',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/mango.png',
//   ),
//   Products(
//     price: 12.0,
//     name: 'melocoton',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/melocoton.png',
//   ),
//   Products(
//     price: 20.0,
//     name: 'melon',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/melon.png',
//   ),
//   Products(
//     price: 5.0,
//     name: 'naranja',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/naranja.png',
//   ),
//   Products(
//     price: 15.0,
//     name: 'piña',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/piña.png',
//   ),
//   Products(
//     price: 15.0,
//     name: 'sandia',
//     description: 'the avogado is flesy fruit',
//     image: 'assets/fruist_list/sandia.png',
//   ),
// ];

class ProductsModel {
  final String posterURL;
  final String name;
  final double price;
  final String description;

  ProductsModel({
    required this.name,
    required this.price,
    required this.description,
    required this.posterURL,
  });
}

List<ProductsModel> listProduc1 = [
  new ProductsModel(
    name: "Shampo",
    price: 150.00,
    description: "Descripcion del producto",
    posterURL:
        "https://th.bing.com/th/id/R.aea194eeeb05a06b719b9bfd70237d4e?rik=YCpLDUSMeFD9lw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG36.png&ehk=YTVw%2fhDxzm6xbAxf36WlUpYE6cr4IbV1WU5cDfXH%2bxI%3d&risl=&pid=ImgRaw&r=0",
  ),
  new ProductsModel(
    name: "Shampo",
    price: 150.00,
    description: "Descripcion del producto",
    posterURL:
        "https://th.bing.com/th/id/R.aea194eeeb05a06b719b9bfd70237d4e?rik=YCpLDUSMeFD9lw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG36.png&ehk=YTVw%2fhDxzm6xbAxf36WlUpYE6cr4IbV1WU5cDfXH%2bxI%3d&risl=&pid=ImgRaw&r=0",
  ),
  new ProductsModel(
    name: "Shampo",
    price: 150.00,
    description: "Descripcion del producto",
    posterURL:
        "https://th.bing.com/th/id/R.aea194eeeb05a06b719b9bfd70237d4e?rik=YCpLDUSMeFD9lw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG36.png&ehk=YTVw%2fhDxzm6xbAxf36WlUpYE6cr4IbV1WU5cDfXH%2bxI%3d&risl=&pid=ImgRaw&r=0",
  ),
  new ProductsModel(
    name: "Shampo",
    price: 150.00,
    description: "Descripcion del producto",
    posterURL:
        "https://th.bing.com/th/id/R.aea194eeeb05a06b719b9bfd70237d4e?rik=YCpLDUSMeFD9lw&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG36.png&ehk=YTVw%2fhDxzm6xbAxf36WlUpYE6cr4IbV1WU5cDfXH%2bxI%3d&risl=&pid=ImgRaw&r=0",
  ),
];

List<ProductsModel> listProduct2 = [
  new ProductsModel(
      name: "Shampo",
      price: 150.00,
      description: "descripcion del producto",
      posterURL:
          "https://th.bing.com/th/id/R.b55c05af37301bf01285b8deff4376d4?rik=PiTbhtdu0okFYA&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG28.png&ehk=gSRFErfHU9yVrd%2bNYVlhpAcpN6%2bdgagxbvv2Vzlppxk%3d&risl=&pid=ImgRaw&r=0"),
  new ProductsModel(
      name: "Shampo",
      price: 150.00,
      description: "descripcion del producto",
      posterURL:
          "https://th.bing.com/th/id/R.b55c05af37301bf01285b8deff4376d4?rik=PiTbhtdu0okFYA&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG28.png&ehk=gSRFErfHU9yVrd%2bNYVlhpAcpN6%2bdgagxbvv2Vzlppxk%3d&risl=&pid=ImgRaw&r=0"),
  new ProductsModel(
      name: "Shampo",
      price: 150.00,
      description: "descripcion del producto",
      posterURL:
          "https://th.bing.com/th/id/R.b55c05af37301bf01285b8deff4376d4?rik=PiTbhtdu0okFYA&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG28.png&ehk=gSRFErfHU9yVrd%2bNYVlhpAcpN6%2bdgagxbvv2Vzlppxk%3d&risl=&pid=ImgRaw&r=0"),
  new ProductsModel(
      name: "Shampo",
      price: 150.00,
      description: "descripcion del producto",
      posterURL:
          "https://th.bing.com/th/id/R.b55c05af37301bf01285b8deff4376d4?rik=PiTbhtdu0okFYA&riu=http%3a%2f%2fpngimg.com%2fuploads%2fshampoo%2fshampoo_PNG28.png&ehk=gSRFErfHU9yVrd%2bNYVlhpAcpN6%2bdgagxbvv2Vzlppxk%3d&risl=&pid=ImgRaw&r=0"),
];

List<ProductsModel> listTopProductElectronic = [
  new ProductsModel(
    name: "laptop",
    price: 150.00,
    description: "Descripcion del producto",
    posterURL:
        "https://th.bing.com/th/id/R.27857a94f86b24039a3f6afaff8ba4bd?rik=VkUMeh5auaalmA&pid=ImgRaw&r=0",
  ),
  new ProductsModel(
    name: "Mause Gaming",
    price: 150.00,
    description: "Descripcion del producto",
    posterURL:
        "https://th.bing.com/th/id/OIP.4aZ0IKt7T22q_P4r9rrE1wHaGk?pid=ImgDet&rs=1",
  ),
  new ProductsModel(
      name: "Audifonos",
      price: 150.00,
      description: "Descripcion del producto",
      posterURL:
          "https://pngimg.com/uploads/headphones/headphones_PNG7632.png"),
];
/*
List<ProductsModel> listMovieAnimadas = [
  new ProductsModel(
      posterURL:
          "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F21%2F2019%2F11%2Fsb_dom_online_teaser_1-sheet_binoculars_661-2000.jpg&q=85"),
  new ProductsModel(
      posterURL:
          "https://upload.wikimedia.org/wikipedia/en/9/9e/Hotel_Transylvania_3_%282018%29_Poster.jpg"),
  new ProductsModel(
      posterURL:
          "https://es.web.img3.acsta.net/r_1280_720/medias/nmedia/18/68/23/11/20027493.jpg"),
];

List<ProductsModel> listMovieSeries = [
  new ProductsModel(
      posterURL:
          "https://images-na.ssl-images-amazon.com/images/I/51IdLrBzU-L._AC_.jpg"),
  new ProductsModel(
      posterURL:
          "https://i.pinimg.com/originals/be/0d/c7/be0dc7123fbe8060a3db29f655558e26.png"),
  new ProductsModel(
      posterURL:
          "https://img.europapress.es/fotoweb/fotonoticia_20190620163305-1906767909_300.jpg"),
];*/
