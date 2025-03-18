import 'product.dart';

class ProductManager {
  List<Product> _products = [];

  // Add a new product
  void addProduct(String name, String description, double price) {
    Product newProduct = Product(name, description, price);
    _products.add(newProduct);
    print("✅ Product added successfully!\n");
  }

  // View all products
  void viewAllProducts() {
    if (_products.isEmpty) {
      print("⚠️ No products available.\n");
      return;
    }

    print("\n📦 Available Products:");
    for (int i = 0; i < _products.length; i++) {
      print("🔹 [${i + 1}]");
      _products[i].displayProduct();
    }
  }

  // View a single product
  void viewProduct(int index) {
    if (index < 0 || index >= _products.length) {
      print("❌ Invalid product number!\n");
      return;
    }
    _products[index].displayProduct();
  }

  // Edit a product
  void editProduct(
    int index,
    String newName,
    String newDescription,
    double newPrice,
  ) {
    if (index < 0 || index >= _products.length) {
      print("❌ Invalid product number!\n");
      return;
    }
    _products[index].name = newName;
    _products[index].description = newDescription;
    _products[index].price = newPrice;
    print("✅ Product updated successfully!\n");
  }

  // Delete a product
  void deleteProduct(int index) {
    if (index < 0 || index >= _products.length) {
      print("❌ Invalid product number!\n");
      return;
    }
    _products.removeAt(index);
    print("🗑️ Product deleted successfully!\n");
  }
}
