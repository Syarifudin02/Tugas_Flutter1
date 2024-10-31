import 'package:flutter/material.dart';

class DisenHalamandashboard extends StatelessWidget {
  final String username;

  DisenHalamandashboard({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text(
          'Selamat Datang, $username!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}