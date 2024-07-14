
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

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
                child: Image.asset(
                  'assets/images/route_logo.png',
                  scale: 3.5,
                ),
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
          const Text(
            'Nike air jordon \nNike Air Shoes flixable for woman',
          ),
          const Row(
            children: [
              Text('EGP 1200'),
              Spacer(),
              Text(
                '2000 EGP',
                style:
                TextStyle(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Row(
            children: [
              const Text(
                'Review (4.6) ',
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
