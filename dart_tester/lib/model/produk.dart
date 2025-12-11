import 'dart:convert';

class Produk {
  // 1. definisikan variable yang dibuatuhkan
  // 2. set ke final supaya dapat dirubah setelah dibuat
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String image;

  // buat konstruktor
  Produk({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  // baut method untuk import dari json
  // buat method dengan keyword factory
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'image': image,
    };
  }

  factory Produk.fromMap(Map<String, dynamic> map) {
    return Produk(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      category: map['category'] ?? '',
      image: map['image'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Produk(id: $id, title: $title, description: $description, price: $price, category: $category, image: $image)';
  }
}
