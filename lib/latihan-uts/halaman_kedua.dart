import 'package:flutter/material.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kedua')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halo, $nama!', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text(
              'Tekan tombol di kanan bawah untuk kembali ke halaman pertama.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/");
        },
        child: const Icon(Icons.arrow_back),
     ),
     );
 }
}
