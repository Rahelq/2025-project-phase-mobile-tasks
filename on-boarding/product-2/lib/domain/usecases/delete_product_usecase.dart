import '../entities/product.dart';

class DeleteProductUsecase {
  final List<Product> products;

  DeleteProductUsecase(this.products);

  bool call(int id) {
  
    int initialLength = products.length;
    
 
    products.removeWhere((product) => product.id == id);
    
  
    return products.length < initialLength;
  }
}
