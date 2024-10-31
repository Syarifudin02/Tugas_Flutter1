import 'package:flutter/material.dart';

class DisenHalamandashboard extends StatelessWidget {
  final String username;

  DisenHalamandashboard({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.blueGrey),
      body: Center(
        child: SizedBox(
          width: 450, 
          height: 820,
          child: Card(
            color: Colors.blueAccent,
        child:Center(
          child: Text(
          'Selamat Datang, $username!',
          style: TextStyle(fontSize: 24),
        ),
        ),
      ),
    ),
    ),
    );
  }
}