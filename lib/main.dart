import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/latihan_layout2.dart';
import 'package:latihan_flutter/latihan/page/page2.dart';
import 'package:latihan_flutter/latihan/text_box.dart';
import 'package:latihan_flutter/latihan/burger.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ambilData();
  }

  // funtion untuk menyimpan data ke shared preferences
  void simpan_data() async {
    final p = await SharedPreferences.getInstance();
    p.setBool("TemaGelap", isDark);
  }

  void ambilData() async {
    final p = await SharedPreferences.getInstance();
    setState(() {
      isDark = p.getBool("TemaGelap") ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan share preferance",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: Text("Switch theme")),
        body: Center(
          child: SwitchListTile(
            title: Text("Tombol tema"),
            value: isDark,
            onChanged: (bool value) {
              setState(() {
                isDark = value;
              });
              simpan_data();
            },
          ),
        ),
      ),
    );
  }
}
