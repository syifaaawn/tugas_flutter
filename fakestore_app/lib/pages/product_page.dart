import 'package:fakestore_app/helper/product_helper.dart';
import 'package:fakestore_app/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
        backgroundColor: const Color.fromARGB(255, 116, 144, 243),
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: ProductHelper().getAllProduct(),
        builder: (context, snapshot) {
          // cek kondisi tunggu data
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            // simpan data dalam variable
            List<ProductModel> produk = snapshot.data!;
            return ListView.builder(
              itemCount: produk.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()
                  ),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(produk[index].image,width: 50,),
                      Column( 
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(produk[index].title),
                          Text(produk[index].description),
                          Text(produk[index].price.toString()),
                        ],
                      )
                    ],
                    
                  ),
                );
                
              },
            );
          }
          return Text("ini produk");
        },
      ),
    );
  }
}
