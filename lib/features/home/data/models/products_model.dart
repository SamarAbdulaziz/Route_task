
class ProductsModel {
  List<Product> products;
  int total;

  ProductsModel({
    required this.products,
    required this.total,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    products: List<Product>.from(
        json["products"].map((x) => Product.fromJson(x))),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "total": total,
  };
}

class Product {
  int id;
  String title;
  String description;
  double price;
  double discountPercentage;
  double rating;
  List<String> images;
  String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"]?.toDouble(),
    discountPercentage: json["discountPercentage"]?.toDouble(),
    rating: json["rating"]?.toDouble(),
    images: List<String>.from(json["images"].map((x) => x)),
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "discountPercentage": discountPercentage,
    "rating": rating,
    "images": List<dynamic>.from(images.map((x) => x)),
    "thumbnail": thumbnail,
  };
}

