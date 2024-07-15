import 'package:flutter/material.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';
import 'package:route_tech_summit_task/features/home/presentation/views/components/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.products,
  });

  final List<ProductsModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ProductItem(
          product: products[index],
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4.9,
          mainAxisSpacing: 17.0,
          crossAxisSpacing: 7.0,
        ),
      ),
    );
  }
}
