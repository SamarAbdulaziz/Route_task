import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_tech_summit_task/features/home/presentation/view_model/product_cubit/product_cubit.dart';
import 'components/product_grid_view.dart';
import 'components/search_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
      child: BlocConsumer<ProductsCubit, ProductState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is GetProductsSuccessState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/route_logo.png', scale: 3.5),
                const SizedBox(
                  height: 20,
                ),
                const SearchBarWidget(),
                ProductGridView(products: state.products),
              ],
            );
          }
          if (state is GetProductsErrorState) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ));
  }
}
