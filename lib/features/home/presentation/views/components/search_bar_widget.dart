
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.78,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(32.0),
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              labelText: 'what do you search for?',
              prefixIcon: Icon(
                Icons.search,
                size: 38,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: kPrimaryColor,
            size: 38,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
