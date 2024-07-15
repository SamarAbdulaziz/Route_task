import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_tech_summit_task/core/utils/api_service.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';

import '../../../../core/errors/failure.dart';
import 'home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<ProductsModel>>> fetchProducts() async {
    try {
      var data = await apiService.get();
      List<ProductsModel> products = [];

      if (data.containsKey('products') && data['products'] is List) {
        List<dynamic> productsData = data['products'];
        products = productsData
            .map((product) => ProductsModel.fromJson(product))
            .toList();
      }
      // for (var item in data['products']) {
      //   products.add(ProductsModel.fromJson(item));
      // }
      return right(products);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
