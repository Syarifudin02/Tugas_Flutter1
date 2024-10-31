import 'package:flutter/material.dart';
import 'package:flutter_tugas/Halaman_Login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Aplikasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DisenHalamanLogin(),
    );
  }
}
