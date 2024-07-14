import 'package:flutter/material.dart';
import 'package:route_tech_summit_task/core/utils/constants.dart';

import 'components/product_grid_view.dart';
import 'components/product_item.dart';
import 'components/search_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/route_logo.png', scale: 3.5),
          const SizedBox(
            height: 20,
          ),
          const SearchBarWidget(),
          const ProductGridView(),
        ],
      ),
    ));
  }
}
