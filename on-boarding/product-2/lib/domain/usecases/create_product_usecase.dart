import '../entities/product.dart';

class CreateProductUsecase {
  final List<Product> products;

  CreateProductUsecase(this.products);

  void call(Product product) {
    products.add(product);
  }
}
