import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  // function proses login ke API
  Future<void> cekLogin() async {
    // rubah kondisi isLoading
    setState(() {
      isLoading = true;
    });

    // proses request ke API
    Map<String, dynamic> dataUser = {
      "username": usernameController.text,
      "password": passwordController.text,
    };

    var uri = Uri.parse("https://fakestoreapi.com/auth/login");
    try {
      var respon = await http.post(uri, body: dataUser);
      if (respon.statusCode == 201) {
        Navigator.pushReplacementNamed(context, "/product");
      } else {
        throw Exception("Usernamen dan password salah");
      }
    } catch (e) {
      // munculkan snackbar
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SELAMAT DATANG",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30),

              // Username
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Password
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isLoading ? null : cekLogin,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 91, 163, 246),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Masuk"),
                  // child: Text("Masuk", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
