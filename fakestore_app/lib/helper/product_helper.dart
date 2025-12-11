import 'dart:convert';

import 'package:fakestore_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductHelper {
  // fungsi mengambil seluruh list produk
  Future<List<ProductModel>> getAllProduct() async {
    // siapkan url endpoint produk
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var respon = await http.get(uri);
    if (respon.statusCode == 200) {
      List<dynamic> hasil = jsonDecode(respon.body);
      return hasil.map((json) => ProductModel.fromMap(json)).toList();
    } else {
      throw Exception("Koneksi terganggu");
    }
  }
}
