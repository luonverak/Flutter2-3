import 'package:flutter/material.dart';

import '../model/product.dart';
import '../view/detail.dart';
import 'font_style.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(product: product),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.15,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FontStyleText(
                          text: 'Featured',
                          textSize: 16,
                        ),
                        FontStyleText(
                          text: product.name,
                          textSize: 24,
                          textWeight: FontWeight.bold,
                        ),
                        FontStyleText(
                          text: '\$${product.price}/${product.kilo}Kg',
                          textSize: 16,
                        ),
                      ],
                    ),
                    Image(
                      width: 80,
                      image: AssetImage(product.thumbnail),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart),
                        FontStyleText(
                          text: 'Order Now !',
                          textSize: 16,
                          textWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
