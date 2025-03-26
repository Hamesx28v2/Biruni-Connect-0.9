import 'package:flutter/material.dart';
import 'sikca_sorulan_page.dart'; // Sıkça Sorulan Sorular sayfası
import 'odeme_secenekleri_page.dart'; // Öğrenim Ücretleri ve Ödeme Seçenekleri sayfası
import 'puanlar_siralamalar_page.dart'; // Puanlar ve Sıralamalar sayfası
import 'yurtlar_page.dart'; // Kız ve Erkek Biruni Yurtları sayfası
import 'demo_dersler_page.dart'; // Demo Dersler sayfası
import 'bolum_program_tanitimi_page.dart'; // Bölüm Program Tanıtımı sayfası
import 'uluslararasi_gelecegine_dokun_page.dart'; // Uluslararası Geleceğine Dokun sayfası
import 'cagdas_page.dart'; // Çağdaş ve Yenilikçi Eğitim Programları sayfası
import 'package:biruni_connect/ham_menu.dart';

class AdayOgrenciPage extends StatelessWidget {
  const AdayOgrenciPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aday Öğrenci'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Sol taraftaki menüyü aç
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: const HamburgerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 3, // 3 görsel aynı satırda
          crossAxisSpacing: 8.0, // Görseller arasındaki yatay boşluk
          mainAxisSpacing: 8.0, // Görseller arasındaki dikey boşluk
          children: [
            _buildGridItem(
              context,
              'Sıkça Sorulan Sorular',
              Colors.orange,
              'assets/images/sss.png',
              const SikcaSorulanPage(),
            ),
            _buildGridItem(
              context,
              'Öğrenim Ücretleri ve Ödeme Seçenekleri',
              Colors.orange,
              'assets/images/ogrenimucret.png',
              OdemeSecenekleriPage(),
            ),
            _buildGridItem(
              context,
              'Puanlar ve Sıralamalar',
              Colors.orange,
              'assets/images/puanlar.png',
              PuanlarVeSiralamalarPage(),
            ),
            _buildGridItem(
              context,
              'Kız ve Erkek Biruni Yurtları',
              Colors.orange,
              'assets/images/yurt.png',
              const YurtlarPage(),
            ),
            _buildGridItem(
              context,
              'Demo Dersler',
              Colors.orange,
              'assets/images/demo.png',
              const DemoDerslerPage(),
            ),
            _buildGridItem(
              context,
              'Bölüm Program Tanıtımı',
              Colors.orange,
              'assets/images/bolum.png',
              const BolumProgramTanitimPage(),
            ),
            _buildGridItem(
              context,
              'Uluslararası Geleceğine Dokun',
              Colors.orange,
              'assets/images/uluslar.png',
              UluslararasiGelecegineDokunPage(),
            ),
            _buildGridItem(
              context,
              'Çağdaş ve Yenilikçi Eğitim Programları',
              Colors.orange,
              'assets/images/cagdas.png',
              const CagdasVeYenilikciEgitimPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, Color color,
      String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 60.0, // Adjusted height
              width: 80.0, // Adjusted width
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 11, // Adjusted font size
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
