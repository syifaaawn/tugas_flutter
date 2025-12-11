import 'dart:convert';
import 'package:dart_tester/model/produk.dart';
import 'package:http/http.dart' as http;

class ProdukHelper {
  final Map<String, String> _header = {"Content-Type": "application/json"};

  Future<List<dynamic>> getAllProduk() async {
    final url = Uri.parse("https://fakestoreapi.com/products");

    try {
      // request
      var respon = await http.get(url);

      // cek status
      if (respon.statusCode == 200) {
        // decode JSON
        var data = jsonDecode(respon.body);

        // mapping ke model
        return data.map((item) => Produk.fromMap(item)).toList();
      } else {
        throw Exception("Error status code : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }

  // PUT  Update product 
  Future<Produk> updateProduk(Produk pr) async {
    final url = Uri.parse("https://fakestoreapi.com/products/${pr.id}");
    try {
      var respon = await http.put(
        url,
        headers: _header,
        body: jsonEncode(pr.toMap()),
      );

      if (respon.statusCode == 200) {
        var data = jsonDecode(respon.body);
        return Produk.fromMap(data);
      } else {
        throw Exception("Error status code : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }


  // POST / CREATE menambah produk baru
  Future<int> createProduk(Produk pr) async {
    final url = Uri.parse("https://fakestoreapi.com/products");

    try {
      var respon = await http.post(
        url,
        headers: _header,
        body: jsonEncode(pr.toMap()),
      );

      if (respon.statusCode == 201) {
        var data = jsonDecode(respon.body);
        return data["id"];
      } else {
        throw Exception("Error status code : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }

  // GET produk berdasarkan ID
  Future<Produk> getProdukById(int id) async {
    final url = Uri.parse("https://fakestoreapi.com/products/$id");

    try {
      var respon = await http.get(url);

      if (respon.statusCode == 200) {
        var data = jsonDecode(respon.body);
        return Produk.fromMap(data);
      } else {
        throw Exception("Error status code : ${respon.statusCode}");
      }
    } catch (e) {
      throw Exception("Error : $e");
    }
  }
}
