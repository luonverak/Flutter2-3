class ProductCategory {
  final int id;
  final String name;
  final String thumbnail;

  ProductCategory({
    required this.id,
    required this.name,
    required this.thumbnail,
  });
}

List<ProductCategory> categoryList = [
  ProductCategory(id: 1, name: 'Fruite', thumbnail: 'asset/image/bananas.png'),
  ProductCategory(id: 2, name: 'Food', thumbnail: 'asset/image/pngwing.webp'),
  ProductCategory(id: 3, name: 'Drink', thumbnail: 'asset/image/drink.jpg')
];
