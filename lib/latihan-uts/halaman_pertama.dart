import 'package:flutter/material.dart';

class HalamanPertama extends StatefulWidget {
  const HalamanPertama({super.key});

  @override
  State<HalamanPertama> createState() => _HalamanPertamaState();
}

class _HalamanPertamaState extends State<HalamanPertama> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Pertama')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Masukkan Nama Anda:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Tombol diklik!");
                Navigator.pushNamed(
                  context,
                  '/halamanKedua',
                  arguments: _controller.text,
                );
              },
              child: const Text('Kirim ke Halaman Kedua'),
            ),
          ],
        ),
      ),
    );
  }
}
