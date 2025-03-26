import 'package:biruni_connect/main.dart';
import 'package:flutter/material.dart';
import 'thumbnail.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:biruni_connect/ham_menu.dart';

class SanalTur extends StatelessWidget {
  const SanalTur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Thumbnail> thumbList = [
      const Thumbnail(
        imagePath: 'assets/360/bahce.jpg',
        thumbPath: 'assets/360/bahce.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/yemekhane.jpg',
        thumbPath: 'assets/360/yemekhane.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/giris.jpg',
        thumbPath: 'assets/360/giris.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/havuz.jpg',
        thumbPath: 'assets/360/havuz.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/havuzust.jpg',
        thumbPath: 'assets/360/havuzust.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/lab.jpg',
        thumbPath: 'assets/360/lab.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/library.jpg',
        thumbPath: 'assets/360/library.jpg',
      ),
      const Thumbnail(
        imagePath: 'assets/360/ogrenciwork.jpg',
        thumbPath: 'assets/360/ogrenciwork.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sanal Tur",
          style: TextStyle(color: Colors.white), // Başlık rengi beyaz
        ),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  // Sağ taraftaki menüyü aç
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
                  (route) => false, // Tüm geçmişi temizler
            );
          },
        ),
        iconTheme: const IconThemeData(color: Colors.white), // İkon rengi beyaz
        backgroundColor: Colors.blue, // AppBar arka plan rengi
      ),
      endDrawer: const HamburgerMenu(),
      body: SafeArea(
        child: kIsWeb
            ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.5,
            ),
            children: thumbList,
          ),
        )
            : ListView(
          children: thumbList,
        ),
      ),
    );
  }
}
