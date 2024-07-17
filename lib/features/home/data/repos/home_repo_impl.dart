import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_tech_summit_task/core/utils/api_service.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';

import '../../../../core/errors/failure.dart';
import 'home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiServices apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<ProductsModel>>> fetchProducts(
      {String? value}) async {
    try {
      var data = await apiService.getSearch(value: value);
//      List<ProductsModel> products = [];

      if (data.containsKey('products') && data['products'] is List) {
        List<dynamic> productsData = data['products'];
        List<ProductsModel> products = productsData
            .map((product) => ProductsModel.fromJson(product))
            .toList();
        return Right(products);
      } else {
        return Left(ServerFailure('Products data is invalid'));
      }
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
