import 'package:demo/product/model/category.dart';

class Product {
  final int id;
  final String name;
  final int kilo;
  final double price;
  final String thumbnail;
  final String category;

  Product(
      {required this.id,
      required this.name,
      required this.kilo,
      required this.price,
      required this.thumbnail,
      required this.category});
}

List<Product> productList = [
  Product(
    id: 1,
    name: 'Banna',
    kilo: 2,
    price: 3,
    thumbnail: 'asset/image/bananas.png',
    category: categoryList[0].name,
  ),
  Product(
    id: 2,
    name: 'Green Apple',
    kilo: 1,
    price: 4,
    thumbnail: 'asset/image/pngwing.webp',
    category: categoryList[0].name,
  ),
  Product(
    id: 3,
    name: 'Java Apple',
    kilo: 4,
    price: 1.5,
    thumbnail: 'asset/image/on4x0_512.webp',
    category: categoryList[0].name,
  ),
  Product(
    id: 4,
    name: 'Apple',
    kilo: 2,
    price: 3,
    thumbnail: 'asset/image/Fruit-Apple-1.webp',
    category: categoryList[0].name,
  ),
  Product(
    id: 5,
    name: 'Burger',
    kilo: 1,
    price: 5,
    thumbnail: 'asset/image/burger.webp',
    category: categoryList[1].name,
  ),
  Product(
    id: 6,
    name: 'Multiple Food',
    kilo: 2,
    price: 10,
    thumbnail: 'asset/image/food.jpg',
    category: categoryList[1].name,
  ),
  Product(
    id: 7,
    name: 'Spaicati',
    kilo: 1,
    price: 7,
    thumbnail: 'asset/image/mii.jpg',
    category: categoryList[1].name,
  ),
  Product(
    id: 8,
    name: 'Checken',
    kilo: 1,
    price: 7,
    thumbnail: 'asset/image/checken.png',
    category: categoryList[1].name,
  ),

];
