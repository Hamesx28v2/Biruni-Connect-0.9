import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class OdemeSecenekleriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ödeme Seçenekleri'),
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
      ),
      endDrawer: const HamburgerMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Eğitim Fakültesi Bölümü
            Text(
              'Eğitim Fakültesi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              child: Center(
                child: Image.asset('assets/images/egitimfakulte.png'),
              ),
            ),
            SizedBox(height: 40),
            // Mühendislik ve Doğa Bilimleri Fakültesi Bölümü
            Text(
              'Mühendislik ve Doğa Bilimleri Fakültesi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              child: Center(
                child: Image.asset('assets/images/muhendislik.png'),
              ),
            ),
            SizedBox(height: 40),
            // Sağlık Bilimleri Fakültesi Bölümü
            Text(
              'Sağlık Bilimleri Fakültesi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              child: Center(
                child: Image.asset('assets/images/saglık.png'),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
