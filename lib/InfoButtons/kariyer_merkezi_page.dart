import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:biruni_connect/ham_menu.dart';

class KariyerMerkeziPage extends StatelessWidget {
  const KariyerMerkeziPage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'URL açılamadı: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'title': 'Mezunlarımızın Görüşleri',
        'image': 'assets/images/mezun_gorus.png'
      },
      {
        'title': 'Mezun Bilgi Sistemi',
        'image': 'assets/images/mezun_bilgi.png'
      },
      {
        'title': 'Kariyer Planlama Dersi',
        'image': 'assets/images/kariyer_ders.png'
      },
      {
        'title': 'Mezuniyet Sonrası Eğitim',
        'image': 'assets/images/mezuniyet_sonrası.png'
      },
      {
        'title': 'Kariyer Günleri',
        'image': 'assets/images/kariyer_gunleri.png'
      },
      {'title': 'Yetenek Kapısı', 'image': 'assets/images/yetenek_kapisi.png'},
      {
        'title': 'Ulusal Staj Programı',
        'image': 'assets/images/staj.png',
      },
      {'title': 'Sosyal Transkript', 'image': 'assets/images/sosyal_trans.png'},
      {'title': 'BirDeHa', 'image': 'assets/images/birdeha.png'},
      {'title': 'Mezun Kart', 'image': 'assets/images/mezun_kart.png'},
      {
        'title': 'Özgeçmiş (CV) Hazırlama',
        'image': 'assets/images/cv.png',
      },
      {'title': 'KVKK', 'image': 'assets/images/kvkk.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kariyer Merkezi'),
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
        backgroundColor: Colors.blue,
      ),
      endDrawer: const HamburgerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 sütunlu bir grid
            childAspectRatio: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (items[index]['title'] == 'Özgeçmiş (CV) Hazırlama') {
                  _launchURL(
                    'https://kariyer.biruni.edu.tr/wp-content/uploads/2023/10/KM_CV_ornegi_so_2023-rev_KVK.pdf',
                  );
                } else {
                  // Diğer butonlar için başka bir işlem yapabilirsiniz
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${items[index]['title']} tıklandı.'),
                    ),
                  );
                }
              },
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      items[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    items[index]['title']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}