class GroceryProducts {
  final double price;
  final String name;
  final String description;
  final String image;
  final String wheight;

  const GroceryProducts({
    required this.price,
    required this.description,
    required this.name,
    required this.image,
    required this.wheight,
  });
}

const groceryProducts = <GroceryProducts>[
  GroceryProducts(
      price: 5.0,
      name: 'bananas',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/bananas.png',
      wheight: '1000g'),
  GroceryProducts(
      price: 12.0,
      name: 'aguacate',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/aguacate.png',
      wheight: '1500g'),
  GroceryProducts(
      price: 4.0,
      name: 'cereza',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/cereza.png',
      wheight: '300g'),
  GroceryProducts(
      price: 8.0,
      name: 'durazno',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/durazno.png',
      wheight: '500g'),
  GroceryProducts(
      price: 1.0,
      name: 'fresa',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/fresa.png',
      wheight: '200g'),
  GroceryProducts(
      price: 15.0,
      name: 'mango',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/mango.png',
      wheight: '800g'),
  GroceryProducts(
      price: 12.0,
      name: 'melocoton',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/melocoton.png',
      wheight: '800g'),
  GroceryProducts(
      price: 20.0,
      name: 'melon',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/melon.png',
      wheight: '1800g'),
  GroceryProducts(
      price: 5.0,
      name: 'naranja',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/naranja.png',
      wheight: '1000'),
  GroceryProducts(
      price: 15.0,
      name: 'piña',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/piña.png',
      wheight: '2000g'),
  GroceryProducts(
      price: 15.0,
      name: 'sandia',
      description: 'the avogado is flesy fruit',
      image: 'assets/fruist_list/sandia.png',
      wheight: '1800g'),
];
