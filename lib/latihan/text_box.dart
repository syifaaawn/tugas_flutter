import 'package:flutter/material.dart';

class TextBoxPage extends StatefulWidget {
  const TextBoxPage({super.key});

  @override
  State<TextBoxPage> createState() => _TextBoxPageState();
}

class _TextBoxPageState extends State<TextBoxPage> {
  bool _showpassword = true;
  final TextEditingController _namacontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _tanggallahir = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Box Flutter"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            // Text field nama lengkap
            Text("Nama :"),
            TextField(
              controller: _namacontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ), 
            ),

            //inputan katasandi
            Text("Kata sandi :"),
            TextField(
              controller: _passcontroller,
              obscureText: _showpassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showpassword = !_showpassword;
                    });
                  },
                  icon: Icon(
                    _showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                  ),
                ),
                labelText: "Masukan kata sandi",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            //inputan tanggal
            Text("Tanggal Lahir :"),
            TextField(
              controller: _tanggallahir,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.calendar_month),
                hintText: "dd-mm-yy",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onTap: () async {
                DateTime? pilihTanggal = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  initialDate: DateTime.now(),
                );
                // cek tanggal yang dipilih
                if (pilihTanggal != null) {
                  setState(() {
                    _tanggallahir.text =
                        '${pilihTanggal.day}-${pilihTanggal.month}-${pilihTanggal.year}';
                  });
                }
              },
            ),

            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print( _namacontroller.text);
                    print(_passcontroller.text);
                    print(_tanggallahir);
                  },
                  child: Text(
                    "Simpan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/halaman2");
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
