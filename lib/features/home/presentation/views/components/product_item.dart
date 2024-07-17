import 'package:flutter/material.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';
import '../../../../../core/utils/constants.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.network(product.image),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: kPrimaryColor,
                    )),
              ),
            ],
          ),
          Text(
            product.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Text('${product.price} EGP'),
              const Spacer(),
              Text(
                '${product.price} EGP',
                style: const TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                'Review (${product.rating.round()}) ',
              ),
              const Icon(Icons.star, color: Colors.amber),
              const Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundColor: kPrimaryColor,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 26,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
