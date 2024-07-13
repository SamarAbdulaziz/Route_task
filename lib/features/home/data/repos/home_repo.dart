

import 'package:dartz/dartz.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo{
   Future <Either<Failure,List<ProductsModel>>> fetchProducts();//Future<Either<Failure,List<ProductsModel>>>
}
