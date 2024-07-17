// class ProductsModel {
//   List<Product> products;
//   int total;
//
//   ProductsModel({
//     required this.products,
//     required this.total,
//   });
//
//   factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
//         total: json["total"],
//         products: List<Product>.from(
//             json["products"].map((x) => Product.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "products": List<dynamic>.from(products.map((x) => x.toJson())),
//         "total": total,
//       };
// }
//
// class Product {
//   int id;
//   String title;
//   String description;
//   double price;
//   double discountPercentage;
//   double rating;
//   List<String> images;
//   String thumbnail;
//
//   Product({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.price,
//     required this.discountPercentage,
//     required this.rating,
//     required this.images,
//     required this.thumbnail,
//   });
//
//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         title: json["title"],
//         description: json["description"],
//         price: json["price"]?.toDouble(),
//         discountPercentage: json["discountPercentage"]?.toDouble(),
//         rating: json["rating"]?.toDouble(),
//         images: List<String>.from(json["images"].map((x) => x)),
//         thumbnail: json["thumbnail"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "description": description,
//         "price": price,
//         "discountPercentage": discountPercentage,
//         "rating": rating,
//         "images": List<dynamic>.from(images.map((x) => x)),
//         "thumbnail": thumbnail,
//       };
// }
class ProductsModel{
  final String image;
  final String description;
  final num  price;
  final num  discountPercentage;
  final num  rating;

  ProductsModel({
    required this.image,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
  });

  factory ProductsModel.fromJson(Map<String,dynamic> json ){

    var priceValue = json["price"];
    num price = priceValue is int ? priceValue.toDouble() : priceValue;
    var discount = json["discountPercentage"];
    num discountPercentage = discount is int ? discount.toDouble() : discount;
    var ratePercent = json["rating"];
    num rate = ratePercent is int ? ratePercent.toDouble() : ratePercent;

    return ProductsModel(
      image: json["thumbnail"],
      description: json["description"],
      price: price,
      discountPercentage:discountPercentage,
      rating:rate,

    );
  }
}