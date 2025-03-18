import '../entities/product.dart';

class ViewProductUsecase {
  final List<Product> products;

  ViewProductUsecase(this.products);

  Product? call(int id) {
    return products.firstWhere(
      (product) => product.id == id,
      orElse: () => Product(id: -1, name: "Not Found", description: "", imageUrl: "", price: 0.0),
    );
  }
}
