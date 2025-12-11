import 'dart:convert';

import 'package:collection/collection.dart';

class CartProduct {
  int productId;
  int quantity;

  CartProduct({required this.productId, required this.quantity});

  Map<String, dynamic> toMap() {
    return {'productId': productId, 'quantity': quantity};
  }

  factory CartProduct.fromMap(Map<String, dynamic> map) {
    return CartProduct(
      productId: map['productId']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  @override
  String toString() =>
      'CartProduct(productId: $productId, quantity: $quantity)';
}

class Cart {
  int id;
  int userId;
  String date;
  List<CartProduct> products;

  Cart({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'date': date,
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      id: map['id']?.toInt() ?? 0,
      userId: map['userId']?.toInt() ?? 0,
      date: map['date'] ?? '',
      products: List<CartProduct>.from(
        map['products']?.map((x) => CartProduct.fromMap(x)),
      ),
    );
  }

  @override
  String toString() {
    return 'Cart(id: $id, userId: $userId, date: $date, products: $products)';
  }
}
