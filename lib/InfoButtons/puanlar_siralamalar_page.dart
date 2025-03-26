import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class PuanlarVeSiralamalarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puanlar ve Sıralamalar'),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Sağ taraftaki menüyü aç
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      endDrawer: const HamburgerMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/kontenjan1.png', // 1. görsel yolu
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/kontenjan2.png', // 2. görsel yolu
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
