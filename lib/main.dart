void main() {
 var product = Product(name: 'Mi hao', price: 5000, quality: 10);
  product.printBill();
}

class Product {
  final String name;
  final double quality;
  final double price;
  Product({required this.name, required this.price, required this.quality});
  double total() {
    return quality * price;
  }
  double discount() {
    if (total() >= 1000000) {
      return total() * 0.1;
    }
    else if (total() >= 500000) {
      return total() * 0.05;
    }
    return 0;
  }
  double finalTotal() {
    return total() - ((total() - discount()) * 0.08);
  }

  void printBill() {
    print('San pham: $name');
    print('So luong: $quality');
    print('Gia: $price');
    print('Tong: ${total()}');
    print('Giam gia: ${discount()}');
    print('Tong cuoi cung: ${finalTotal()}');
  }
}