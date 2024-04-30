import 'package:desimeals/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 1,
      title: 'Red Tshirt',
      desc: 'Very Good Tshirt',
      imgURL: '',
      price: 12.3,
    ),
    Product(
      id: 2,
      title: 'Black Tshirt',
      desc: 'Very Good Tshirt',
      imgURL: '',
      price: 12.3,
    ),
  ];

  ProductOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop App"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            // mainAxisSpacing: 10,
            // crossAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: Colors.black38,
                  title: Text(products[index].title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                  leading: IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {},
                  ),
                ),
                child: Image.network('https://picsum.photos/200/300',fit: BoxFit.cover,),
              ),
            ),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
