import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class TemelIlkYardimEgitimiPage extends StatelessWidget {
  const TemelIlkYardimEgitimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Temel İlk Yardım Eğitimi"),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "TEMEL İLK YARDIM EĞİTİMİ: Hayat Kurtarmak İçin İhtiyacınız Olan Beceriler",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Hayat, ne zaman ne olacağı asla belli olmayan bir yolculuktur. Bir kaza, hastalık veya acil durum, beklenmedik bir anda kapınızı çalabilir. Bu tür kritik anlarda, doğru müdahale yapmak yaşama tutunma şansını artırır. Temel İlk Yardım Eğitimi, sadece bir bilgi değil, hayat kurtaran bir beceridir. Hem siz hem de sevdikleriniz için bu becerileri edinmek, sizi her türlü acil duruma karşı daha hazırlıklı ve güvenli hale getirecek.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Eğitimde Neler Öğreneceksiniz?",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "• Temel Yaşam Desteği (BLS): Kalp krizi geçiren, bayılan veya nefes almayan bir kişiye nasıl müdahale edeceğinizi öğrenin.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Kanama ve Yaralanmalar: Kesikler, burkulmalar, kırıklar gibi durumlara nasıl müdahale edilir.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Yanıklar, Boğulmalar ve Zehirlenmeler: Acil durumlar için doğru müdahaleyi nasıl yapacağınızı öğrenin.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Çocuklar ve Bebekler İçin İlk Yardım: Çocuklarda sıkça karşılaşılan acil durumlar hakkında eğitim.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Acil Durumlar ve Sağlık Krizleri: Şok, epilepsi nöbeti, panik atak gibi durumlar için müdahale.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Kimler Katılmalı?",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "• Aileler, Çalışanlar, Sağlık Çalışanları, Eğitmenler, Toplum Liderleri ve Gönüllüler bu eğitimden faydalanabilir.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Eğitimin Faydaları:",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "• Hayat Kurtarma: İlk yardım bilgisi, acil durumlar karşısında hayat kurtarmada kritik rol oynar.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Acil Durumlar İçin Hazırlıklı Olmak: Acil durumlardan önce hazırlıklı olmak.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Sertifikalı Eğitim: Eğitim sonunda Katılımcılara İlk Yardım Sertifikası verilecektir.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Eğitiminiz Sadece Bir Kurs Değil, Bir Yaşam Boyu Yatırımdır!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Eğitim sonrası sürekli destek ve gelişim ile bilgilerinizi güncel tutabilirsiniz.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Hemen Kaydınızı Yapın, Hayatınızı ve Başkalarının Hayatını Kurtarın!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Detaylı Bilgi ve Kayıt İçin: \n\nWeb sitesi: birsem.biruni.edu.tr",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}