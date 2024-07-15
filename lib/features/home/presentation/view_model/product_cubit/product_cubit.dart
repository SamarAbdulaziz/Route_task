import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';
import 'package:route_tech_summit_task/features/home/data/repos/home_repo.dart';

part 'product_state.dart';

class ProductsCubit extends Cubit<ProductState> {
  ProductsCubit(this.homeRepo) : super(ProductInitialState());
  final HomeRepo homeRepo;

  static ProductsCubit get(context) => BlocProvider.of(context);

  Future<void> fetchProductsData() async {
    emit(GetProductsLoadingState());
    var result = await homeRepo.fetchProducts();
    result.fold((failure) => emit(GetProductsErrorState(failure.errMessage)),
        (products) => emit(GetProductsSuccessState(products)));
  }
}
