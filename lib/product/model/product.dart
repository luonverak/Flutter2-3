import 'package:demo/product/model/category.dart';

class Product {
  final int id;
  final String name;
  final int kilo;
  final double price;
  final String thumbnail;
  final String category;
  final List<String> recomment;
  final String description;

  Product(
      {required this.id,
      required this.name,
      required this.kilo,
      required this.price,
      required this.thumbnail,
      required this.category,
      required this.recomment,
      required this.description});
}

List<Product> productList = [
  Product(
    id: 1,
    name: 'Banana',
    kilo: 2,
    price: 3,
    thumbnail: 'asset/image/bananas.png',
    category: categoryList[0].name,
    recomment: [
      'asset/image/banana.jpg',
      'asset/image/Fruit-Apple-1.webp',
      'asset/image/user.jpg',
      'asset/image/bananas.png',
    ],
    description:
        'Cambodia’s exports of fresh bananas have soared in recent years to hit a total of 218,000 metric tons in the first half of 2022, driven mostly by Chinese demand, according to media reports. Although Cambodia remains a relatively small exporter of bananas in global terms, the recent growth rate is striking because the country was exporting virtually no bananas at all in 2016.',
  ),
  Product(
    id: 2,
    name: 'Green Apple',
    kilo: 1,
    price: 4,
    thumbnail: 'asset/image/pngwing.webp',
    category: categoryList[0].name,
    recomment: [],
    description: '',
  ),
  Product(
    id: 3,
    name: 'Java Apple',
    kilo: 4,
    price: 1.5,
    thumbnail: 'asset/image/on4x0_512.webp',
    category: categoryList[0].name,
    recomment: [],
    description: '',
  ),
  Product(
    id: 4,
    name: 'Apple',
    kilo: 2,
    price: 3,
    thumbnail: 'asset/image/Fruit-Apple-1.webp',
    category: categoryList[0].name,
    recomment: [],
    description: '',
  ),
  Product(
    id: 5,
    name: 'Burger',
    kilo: 1,
    price: 5,
    thumbnail: 'asset/image/burger.webp',
    category: categoryList[1].name,
    recomment: [],
    description: '',
  ),
  Product(
    id: 6,
    name: 'Multiple Food',
    kilo: 2,
    price: 10,
    thumbnail: 'asset/image/food.jpg',
    category: categoryList[1].name,
    recomment: [],
    description: '',
  ),
  Product(
    id: 7,
    name: 'Spaicati',
    kilo: 1,
    price: 7,
    thumbnail: 'asset/image/mii.jpg',
    category: categoryList[1].name,
    recomment: [],
    description: '',
  ),
  Product(
    id: 8,
    name: 'Checken',
    kilo: 1,
    price: 7,
    thumbnail: 'asset/image/checken.png',
    category: categoryList[1].name,
    recomment: [],
    description: '',
  ),
];
