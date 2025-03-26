import 'package:flutter/material.dart';
import 'loading_logo.dart';
import 'all_announcements_page.dart';
import 'InfoButtons/erasmus_page.dart';
import 'InfoButtons/tanitimfilmi_page.dart';
import 'InfoButtons/aday_ogrenci_page.dart';
import 'ham_menu.dart';
import 'InfoButtons/akademik_takvim_page.dart';
import 'InfoButtons/surdurulebilirlik_page.dart';
import 'InfoButtons/surekli_egitim_page.dart';
import 'InfoButtons/kariyer_merkezi_page.dart';

void main() {
  runApp(const BiruniConnectApp());
}

class BiruniConnectApp extends StatelessWidget {
  const BiruniConnectApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Biruni Connect',
        home: LoadingScreen() // İlk olarak yükleme ekranı gösteriliyor
        );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(''),
        automaticallyImplyLeading: false,
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
      ),
      drawer: const HamburgerMenu(), // Move the HamburgerMenu to the left side
      body: Container(
        color: Colors.blue, // Changed background color to blue
        child: DefaultTabController(
          length: 3, // Duyurular, Etkinlikler, Haberler için 3 sekme
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Üst kısım logo görseli
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/logo2.png', // Logonun yolu
                    height: 100.0,
                  ),
                ),
              ),
              // TabBar (Duyurular, Etkinlikler, Haberler)
              const TabBar(
                labelColor: Color.fromARGB(255, 247, 246, 246),
                indicatorColor: Color.fromARGB(255, 249, 137, 25),
                tabs: [
                  Tab(text: 'Duyurular'),
                  Tab(text: 'Etkinlikler'),
                  Tab(text: 'Haberler'),
                ],
              ),
              // TabBarView
              Expanded(
                child: TabBarView(
                  children: [
                    _buildScrollableContent([
                      {
                        'text': 'Duyuru 1: Bahar dönemi kayıtları başladı!',
                        'image': 'assets/images/dyr.png',
                      },
                      {
                        'text':
                            'Duyuru 2: Yeni etkinlikler takvimi yayınlandı!',
                        'image': 'assets/images/dyr2.png',
                      },
                      {
                        'text':
                            'Duyuru 3: Mezuniyet töreni detayları açıklandı!',
                        'image': 'assets/images/dyr3.png',
                      },
                    ]),
                    _buildScrollableContent([
                      {
                        'text': 'Etkinlik 1: Kariyer Günü',
                        'image': 'assets/images/etkin.png',
                      },
                      {
                        'text': 'Etkinlik 2: Erasmus Bilgilendirme Semineri',
                        'image': 'assets/images/etkin2.png',
                      },
                      {
                        'text': 'Etkinlik 3: Spor Turnuvaları',
                        'image': 'assets/images/etkin3.png',
                      },
                    ]),
                    _buildScrollableContent([
                      {
                        'text': 'Haber 1: Yeni akademik bina açıldı!',
                        'image': 'assets/images/haber.png',
                      },
                      {
                        'text':
                            'Haber 2: Araştırma projelerine ödüller verildi.',
                        'image': 'assets/images/haber2.png',
                      },
                      {
                        'text':
                            'Haber 3: Üniversitemiz dünya sıralamasında yükseldi.',
                        'image': 'assets/images/haber3.png',
                      },
                    ]),
                  ],
                ),
              ),
              // Alt kısım bölmeler
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3, // Change to 3 items per row
                  padding: const EdgeInsets.all(8.0),
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    _buildGridItem(
                      context,
                      'Aday Öğrenci',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/adayögrenci.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdayOgrenciPage(),
                          ),
                        );
                      },
                    ),
                    _buildGridItem(
                      context,
                      'Akademik Takvim',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/akademiktakvim.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AkademikTakvimPage(),
                          ),
                        );
                      },
                    ),
                    _buildGridItem(
                      context,
                      'Tanıtım Filmi',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/tanitim.png',
                      'https://www.youtube.com/watch?v=T7Csn6DGqSU',
                      onTap: launchYouTubeVideo,
                    ),
                    _buildGridItem(
                      context,
                      'Sürekli Eğitim Uygulama Araştırma Merkezi',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/merkezi.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SurekliEgitimPage(),
                          ),
                        );
                      },
                    ),
                    _buildGridItem(
                      context,
                      'Tüm Duyurular',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/duyuru.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllAnnouncementsPage(),
                          ),
                        );
                      },
                    ),
                    _buildGridItem(
                      context,
                      'Kariyer Merkezi',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/kariyer.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KariyerMerkeziPage(),
                          ),
                        );
                      },
                    ),
                    _buildGridItem(
                      context,
                      'Uluslararası',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/uluslararasi.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ErasmusPage(),
                          ),
                        );
                      },
                    ),
                    _buildGridItem(
                      context,
                      'Sürdürülebilirlik',
                      Color.fromARGB(
                          255, 233, 163, 58), // Changed color to orange
                      'assets/images/sürdürülebilirlik.png',
                      '',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SurdurulebilirlikPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, Color color,
      String imagePath, String url,
      {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap, // Butona özel onTap davranışı
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
              height: 70.0, // Adjusted height
              width: 100.0, // Adjusted width
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 10, // Adjusted font size
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

  Widget _buildScrollableContent(List<Map<String, String>> items) {
    return Column(
      children: [
        const SizedBox(height: 30.0),
        SizedBox(
          height: 200.0,
          child: PageView(
            children:
                items.map((item) => _buildAnnouncementItem(item)).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildAnnouncementItem(Map<String, String> item) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: const Color.fromARGB(255, 233, 163, 58),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            item['image']!,
            height: 150.0,
            width: 450.0,
          ),
        ],
      ),
    );
  }
}
