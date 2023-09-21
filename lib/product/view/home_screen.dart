import 'package:demo/product/model/category.dart';
import 'package:demo/product/model/seller.dart';
import 'package:demo/product/widget/font_style.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';
import '../widget/category.dart';
import '../widget/drawer.dart';
import '../widget/header.dart';
import '../widget/seller.dart';
import '../widget/slide_show.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.green[700],
                  child: const SafeArea(
                    child: Column(
                      children: [
                        Header(),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.white),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                hintText: 'Search Products',
                                hintStyle: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -100,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < productList.length; i++)
                            SlideShow(product: productList[i])
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Body Screen
            const SizedBox(
              height: 85,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17, top: 20, bottom: 10),
              child: FontStyleText(
                text: 'Categories',
                textSize: 18,
                textWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < categoryList.length; i++)
                    CategoryProduct(
                      productCategory: categoryList[i],
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: FontStyleText(
                text: 'Top Sellers',
                textSize: 18,
                textWeight: FontWeight.bold,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < sellerList.length; i++)
                    TopSeller(seller: sellerList[i])
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.category,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
