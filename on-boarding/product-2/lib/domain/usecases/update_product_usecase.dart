import '../entities/product.dart';

class UpdateProductUsecase {
  final List<Product> products;

  UpdateProductUsecase(this.products);

  bool call(Product updatedProduct) {
    int index = products.indexWhere((product) => product.id == updatedProduct.id);
    if (index != -1) {
      products[index] = updatedProduct;
      return true;
    }
    return false;
  }
}
