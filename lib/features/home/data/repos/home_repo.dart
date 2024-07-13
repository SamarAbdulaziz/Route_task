

import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';

abstract class HomeRepo{
   Future <List<ProductsModel>> fetchProducts();//Future<Either<Failure,List<ProductsModel>>>
}
