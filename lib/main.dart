import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_tech_summit_task/core/utils/service_locator/service_locator.dart';
import 'package:route_tech_summit_task/features/home/data/repos/home_repo.dart';
import 'package:route_tech_summit_task/features/home/presentation/view_model/product_cubit/product_cubit.dart';
import 'package:route_tech_summit_task/features/home/presentation/views/home_view.dart';

import 'features/home/presentation/view_model/product_cubit/bloc_observer.dart';

void main() {
  ServicesLocator().init();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ProductsCubit(
          sl.get<HomeRepo>(),
        )..fetchProductsData(),
        child: const HomeView(),
      ),
    );
  }
}
