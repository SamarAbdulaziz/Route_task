import 'package:route_tech_summit_task/core/utils/api_service.dart';
import 'package:route_tech_summit_task/features/home/data/models/products_model.dart';

import 'home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

   @override
   Future<List<ProductsModel>> fetchProducts() async {
    var data = await apiService.get();
    List<ProductsModel> products = [];
    for (var item in data['items']) {
      products.add(ProductsModel.fromJson(item));
    }
    return products;

   }

}
