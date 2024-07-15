part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitialState extends ProductState {}

final class GetProductsLoadingState extends ProductState {}

final class GetProductsErrorState extends ProductState {
  final String message;

  GetProductsErrorState(this.message);
}

final class GetProductsSuccessState extends ProductState {
  final List<ProductsModel> products;

  GetProductsSuccessState(this.products);

}
