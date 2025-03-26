import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // url_launcher'ı içe aktarın
import 'package:biruni_connect/ham_menu.dart';

class AkademikTakvimPage extends StatelessWidget {
  const AkademikTakvimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akademik Takvim'),
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
        backgroundColor: Color.fromARGB(255, 68, 148, 233),
      ),
      endDrawer: const HamburgerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildFacultyButton(
              context,
              'Diş Hekimliği Fakültesi',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Diş Hekimliği Fakültesi hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/dis_tr.pdf', // URL ekleyin
            ),
            _buildFacultyButton(
              context,
              'Eczacılık Fakültesi',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Eczacılık Fakültesi hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/a.pdf',
            ),
            _buildFacultyButton(
              context,
              'Mühendislik ve Doğa Bilimleri Fakültesi',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Mühendislik ve Doğa Bilimleri Fakültesi hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/a.pdf',
            ),
            _buildFacultyButton(
              context,
              'Eğitim Fakültesi',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Eğitim Fakültesi hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/a.pdf',
            ),
            _buildFacultyButton(
              context,
              'Sağlık Bilimler Fakültesi',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Sağlık Bilimleri Fakültesi hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/a.pdf',
            ),
            _buildFacultyButton(
              context,
              'Tıp Fakültesi',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Tıp Fakültesi hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/tip_tr.pdf',
            ),
            _buildFacultyButton(
              context,
              'Meslek Yüksekokulu',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Meslek Yüksekokulu hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/a.pdf',
            ),
            _buildFacultyButton(
              context,
              'Lisansüstü Eğitim Ensitüsü',
              const Color.fromARGB(255, 108, 184, 247),
              'Bu, Lisansüstü Eğitim Ensitüsü hakkında bilgiler içerir.',
              'https://www.biruni.edu.tr/doc/2024/lisansustu.pdf',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFacultyButton(BuildContext context, String title, Color color,
      String details, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          _launchURL(url); // URL'yi açan fonksiyonu çağır
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 16, color: Colors.white), // Changed text color to white
        ),
      ),
    );
  }

  // URL açma fonksiyonu
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'URL açılamadı: $url';
    }
  }
}
