import 'dart:io';
import '../lib/product_manager.dart';

void main() {
  ProductManager productManager = ProductManager();

  while (true) {
    print("\n🛒 E-Commerce App");
    print("1️⃣ Add Product");
    print("2️⃣ View All Products");
    print("3️⃣ View Product Details");
    print("4️⃣ Edit Product");
    print("5️⃣ Delete Product");
    print("6️⃣ Exit");
    stdout.write("Select an option: ");
    
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Enter product name: ");
        String? name = stdin.readLineSync();

        stdout.write("Enter product description: ");
        String? description = stdin.readLineSync();

        stdout.write("Enter product price: ");
        double? price = double.tryParse(stdin.readLineSync() ?? "");

        if (name != null && description != null && price != null) {
          productManager.addProduct(name, description, price);
        } else {
          print("❌ Invalid input. Please try again.");
        }
        break;

      case "2":
        productManager.viewAllProducts();
        break;

      case "3":
        stdout.write("Enter product number to view: ");
        int? index = int.tryParse(stdin.readLineSync() ?? "");
        if (index != null) {
          productManager.viewProduct(index - 1);
        } else {
          print("❌ Invalid input. Please enter a valid number.");
        }
        break;

      case "4":
        stdout.write("Enter product number to edit: ");
        int? index = int.tryParse(stdin.readLineSync() ?? "");

        if (index != null && index > 0) {
          stdout.write("Enter new product name: ");
          String? newName = stdin.readLineSync();

          stdout.write("Enter new description: ");
          String? newDescription = stdin.readLineSync();

          stdout.write("Enter new price: ");
          double? newPrice = double.tryParse(stdin.readLineSync() ?? "");

          if (newName != null && newDescription != null && newPrice != null) {
            productManager.editProduct(index - 1, newName, newDescription, newPrice);
          } else {
            print("❌ Invalid input.");
          }
        } else {
          print("❌ Invalid product number.");
        }
        break;

      case "5":
        stdout.write("Enter product number to delete: ");
        int? index = int.tryParse(stdin.readLineSync() ?? "");

        if (index != null) {
          productManager.deleteProduct(index - 1);
        } else {
          print("❌ Invalid input.");
        }
        break;

      case "6":
        print("👋 Exiting...");
        return;

      default:
        print("⚠️ Invalid option! Please try again.");
    }
  }
}
