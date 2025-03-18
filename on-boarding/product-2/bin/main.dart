import 'package:product_2/domain/entities/product.dart';
import 'package:product_2/domain/usecases/view_all_products_usecase.dart';
import 'package:product_2/domain/usecases/view_product_usecase.dart';
import 'package:product_2/domain/usecases/create_product_usecase.dart';
import 'package:product_2/domain/usecases/update_product_usecase.dart';
import 'package:product_2/domain/usecases/delete_product_usecase.dart';

void main() {
  List<Product> products = [];

  var createProduct = CreateProductUsecase(products);
  var viewAllProducts = ViewAllProductsUsecase(products);
  var viewProduct = ViewProductUsecase(products);
  var updateProduct = UpdateProductUsecase(products);
  var deleteProduct = DeleteProductUsecase(products);

  // Adding products
  createProduct(Product(id: 1, name: "Laptop", description: "Gaming Laptop", imageUrl: "laptop.jpg", price: 1500.0));
  createProduct(Product(id: 2, name: "Phone", description: "Smartphone", imageUrl: "phone.jpg", price: 800.0));

  // View all products
  print("All Products: ${viewAllProducts().map((p) => p.name).toList()}");

  // View a single product
  print("Product with ID 1: ${viewProduct(1)?.name ?? "Product not found"}");

  // Update a product
  updateProduct(Product(id: 1, name: "Laptop Pro", description: "High-end gaming laptop", imageUrl: "laptop_pro.jpg", price: 2000.0));
  print("Updated Product Name: ${viewProduct(1)?.name}");

  // Delete a product
  deleteProduct(2);
  print("Remaining Products: ${viewAllProducts().map((p) => p.name).toList()}");
}
