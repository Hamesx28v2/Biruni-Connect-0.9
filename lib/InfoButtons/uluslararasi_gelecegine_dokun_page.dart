import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class UluslararasiGelecegineDokunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fotoğraf dosya yollarını liste olarak tanımlayın
    final List<String> imagePaths = [
      'assets/images/photo1.png',
      'assets/images/photo2.png',
      'assets/images/photo3.png',
      'assets/images/photo4.png',
      'assets/images/photo5.png',
      'assets/images/photo6.png',
      'assets/images/photo7.png',
      'assets/images/photo8.png',
      'assets/images/photo9.png',
      'assets/images/photo10.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Uluslararası Geleceğine Dokun'),
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
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Uluslararası Geleceğine Dokun',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePaths[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 10, // Adjusted height for the photos
                  width: 10, // Full width
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
