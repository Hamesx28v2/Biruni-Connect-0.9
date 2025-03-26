import 'package:flutter/material.dart';
import 'basvuruform_page.dart'; // Başvuru sayfasını import ettik
import 'temel_ilk_yardim_egitim_page.dart'; // Temel İlk Yardım Eğitimi sayfasını import ettik
import 'temel_ekg_okuma_kursu_page.dart'; // Temel EKG Okuma Kursu sayfasını import ettik
import 'isaret_dili_egitimi_page.dart'; // İşaret Dili Eğitimi sayfasını import ettik
import 'is_sagligi_ve_guvenligi_egitimi_page.dart'; // İş Sağlığı ve Güvenliği Eğitimi sayfasını import ettik
import 'package:biruni_connect/ham_menu.dart';

class SurekliEgitimPage extends StatelessWidget {
  const SurekliEgitimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sürekli Eğitim"),
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
        backgroundColor: Color.fromARGB(255, 233, 163, 58),
      ),
      endDrawer: const HamburgerMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Başlık ve açıklama
              const Text(
                "Sürekli Eğitim Merkezimiz ile Zaman ve Yer Sınırlaması Olmadan Yeteneklerinizi Geliştirin",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Biruni Üniversitesi Sürekli Eğitim Merkezi olarak, hayat boyu öğrenmenin kapılarını aralıyoruz. Uzman eğitmenlerimizle, kariyerinizi ileriye taşıyacak yetenekler kazanın. İster evinizden, ister iş yerinizden, dilediğiniz zaman eğitime erişim sağlayın.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),

              // Başvuru Butonu
              ElevatedButton(
                onPressed: () {
                  // Başvuru sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BasvuruFormPage(),
                    ),
                  );
                },
                child: const Text("Başvuru Yap"),
              ),
              const SizedBox(height: 16.0),

              // BİRSEM - En Geniş Kurs Seçkisi Başlık ve Açıklaması
              const Text(
                "BİRSEM - En Geniş Kurs Seçkisi",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Biruni Üniversitesi Sürekli Eğitim Merkezinde, dünyanın her yerinden ulaşabileceğiniz, en kapsamlı kurs seçkisini keşfedin. Her zaman ve her yerden üst düzey eğitime erişim sağlayın ve kariyerinizi güçlendirin.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),

              // Eğitimler Butonları
              _buildCourseButton(context, "TEMEL İLK YARDIM EĞİTİMİ"),
              _buildCourseButton(context, "TEMEL EKG OKUMA KURSU"),
              _buildCourseButton(context, "İŞARET DİLİ EĞİTİMİ"),
              _buildCourseButton(context, "İŞ SAĞLIĞI ve GÜVENLİĞİ EĞİTİMİ"),
              _buildCourseButton(context, "UYGULAMALI REAL TİME PCR EĞİTİMİ"),
              _buildCourseButton(context, "Masal Terapisi Eğitimi"),
              _buildCourseButton(context,
                  "Dikkat Eksikliği, Hiperaktivite Bozukluğu ve Oyunlarla Müdahale Yöntemleri"),
              _buildCourseButton(context,
                  "Aile Danışmanlığı Uzmanlık Sertifikası Eğitim Programı"),
              _buildCourseButton(
                  context, "Etkili ve Güzel Konuşma Eğitim Programı"),
            ],
          ),
        ),
      ),
    );
  }

  // Kurs butonları oluşturma fonksiyonu
  Widget _buildCourseButton(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ElevatedButton(
        onPressed: () {
          // Temel İlk Yardım Eğitimi sayfasına yönlendiriyoruz
          if (title == "TEMEL İLK YARDIM EĞİTİMİ") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TemelIlkYardimEgitimiPage(),
              ),
            );
          }
          // Temel EKG Okuma Kursu sayfasına yönlendirme
          if (title == "TEMEL EKG OKUMA KURSU") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TemelEkgOkumaKursuPage(),
              ),
            );
          }
          // İşaret Dili Eğitimi sayfasına yönlendirme
          if (title == "İŞARET DİLİ EĞİTİMİ") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IsaretDiliEgitimiPage(),
              ),
            );
          }
          // İş Sağlığı ve Güvenliği Eğitimi sayfasına yönlendirme
          if (title == "İŞ SAĞLIĞI ve GÜVENLİĞİ EĞİTİMİ") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IsSagligiVeGuvenligiEgitimiPage(),
              ),
            );
          }
          // Diğer kurslar için buraya yeni sayfa yönlendirmeleri eklenebilir
        },
        child: Text(title),
      ),
    );
  }
}