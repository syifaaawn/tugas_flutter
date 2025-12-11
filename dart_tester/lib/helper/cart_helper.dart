import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dart_tester/model/cart.dart';

class CartHelper {
  final Map<String, String> _header = {"Content-Type": "application/json"};

  // GET semua carts
  Future<List<dynamic>> getAllCarts() async {
    final url = Uri.parse("https://fakestoreapi.com/carts");

    try {
      var respon = await http.get(url);

      if (respon.statusCode == 200) {
        var data = jsonDecode(respon.body);

        return data.map((item) => Cart.fromMap(item)).toList();
      } else {
        throw Exception("Error status : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }

  // PUT update carts
  Future<Cart> updateCart(Cart c) async {
    final url = Uri.parse("https://fakestoreapi.com/carts/${c.id}");

    try {
      var respon = await http.put(
        url,
        headers: _header,
        body: jsonEncode(c.toMap()),
      );

      if (respon.statusCode == 200) {
        var data = jsonDecode(respon.body);
        return Cart.fromMap(data);
      } else {
        throw Exception("Error status : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }

  // POST / CREATE cart baru
  Future<int> createCart(Cart c) async {
    final url = Uri.parse("https://fakestoreapi.com/carts");

    try {
      var respon = await http.post(
        url,
        headers: _header,
        body: jsonEncode(c.toMap()),
      );

      if (respon.statusCode == 201) {
        var data = jsonDecode(respon.body);
        return data["id"];
      } else {
        throw Exception("Error status : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }

  // GET carts berdasarkan id
   Future<Cart> getCartById(int id) async {
    final url = Uri.parse("https://fakestoreapi.com/carts/$id");

    try {
      var respon = await http.get(url);

      if (respon.statusCode == 200) {
        var data = jsonDecode(respon.body);
        return Cart.fromMap(data);
      } else {
        throw Exception("Error status : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }
}
