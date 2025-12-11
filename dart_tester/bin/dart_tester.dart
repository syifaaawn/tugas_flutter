import 'package:dart_tester/helper/cart_helper.dart';
import 'package:dart_tester/helper/user_helper.dart';
import 'package:dart_tester/model/user.dart';
import 'package:dart_tester/helper/produk_helper.dart';
import 'package:dart_tester/model/produk.dart';
import 'package:dart_tester/model/cart.dart';

void main(List<String> args) async {
  print("Sedamg mengambil data...");
  print("====================================");
  print("                 USER                 ");
  print("====================================");

  List<dynamic> coba = await UserHelper().getAllUser();
  print(coba[0].username);

  // membuat objek untuk menampung data user
  User pengguna = await UserHelper().getUserById(2);
  print(pengguna.username);
  print("Email :${pengguna.email}");

  // membuat user baru
  User p = User(
    id: 10,
    username: "aila",
    email: "aila@gmail.com",
    password: "1234",
  );
  // kirim data ke endpoint
  int idUserBaru = await UserHelper().createUser(p);
  print("id user yang baru dibuat : $idUserBaru");

  // mengupdate user baru
  User up = User(
    id: 2,
    username: "cpcu",
    email: "cpcu@gmail.com",
    password: "252525",
  );

  // simpan hasil respon
  User hasil = await UserHelper().updateUser(up);
  print("Ini hasil update : $hasil");

  // PRODUK
  print("");
  print("====================================");
  print("                PRODUK              ");
  print("====================================");

  // GET semua produk
  List<dynamic> semuaProduk = await ProdukHelper().getAllProduk();
  print(semuaProduk[0].title);

  // GET produk berdasarkan id
  Produk detail = await ProdukHelper().getProdukById(1);
  print("Price : ${detail.price}");

  // Create produk baru
  Produk pr = Produk(
    id: 5,
    title: "Kamera Fuji Film",
    description: "Elektronik",
    price: 3000000,
    category: "kamera",
    image: "https://cpcpu",
  );

  int idProdukBaru = await ProdukHelper().createProduk(pr);
  print("id produk yang baru dibuat : $idProdukBaru ");

  // UPDATE produk
  Produk upPr = Produk(
    id: 3,
    title: "Backpack",
    description: "Tas Gunung",
    price: 250.000,
    category: "Tas",
    image: "https://cpcu.com",
  );

  Produk hasilUp = await ProdukHelper().updateProduk(upPr);
  print("Ini hasil update produk : $hasilUp");

  // CARTS
  print("");
  print("====================================");
  print("                CARTS               ");
  print("====================================");

  // GET semua carts
  List<dynamic> semuaCart = await CartHelper().getAllCarts();
  print("id : ${semuaCart[0].id}");

  // GET carts berdasarkan id
  Cart detailC = await CartHelper().getCartById(1);
  print("UserId : ${detailC.userId}");

  // CREATE cart
  Cart c = Cart(
    id: 2,
    userId: 25,
    date: "2006-02-25",
    products: [
      CartProduct(productId: 1, quantity: 2),
      CartProduct(productId: 3, quantity: 1),
    ],
  );

  int idChartBaru = await CartHelper().createCart(c);
  print("Id cart baru dibuat : $idChartBaru");

  // UPDATE cart
  Cart updateC = Cart(
    id: 1,
    userId: 1,
    date: "2023-01-01",
    products: [
      CartProduct(productId: 1, quantity: 10),
    ],
  );

  Cart hasilUpdate = await CartHelper().updateCart(updateC);
  print("Update cart : $hasilUpdate");


}
