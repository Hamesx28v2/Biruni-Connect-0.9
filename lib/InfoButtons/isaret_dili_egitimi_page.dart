import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class IsaretDiliEgitimiPage extends StatelessWidget {
  const IsaretDiliEgitimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İşaret Dili Eğitimi"),
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
              const Text(
                "İşaret Dili Eğitimi",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "İşaret dili, işitme engelli bireylerin iletişim kurma biçimidir ve tüm dünyada çeşitli formlarda kullanılır. Türkiye’de ise Türk İşaret Dili (TİD) öne çıkmaktadır. İşaret dili eğitimi, sadece işitme engelli bireyler için değil, herkes için değerli bir iletişim aracı sunar. Bu eğitim, toplumsal farkındalığı artırır ve kapsayıcı bir iletişim ortamı yaratır.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Eğitim Amaçları",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Temel Bilgiler: İşaret dilinin tarihçesi, yapısı ve kültürel önemi hakkında bilgi vermek.\n"
                    "• İşaret Dili Öğrenimi: Temel işaretleri, günlük ifadeleri ve sık kullanılan kelimeleri öğretmek.\n"
                    "• İletişim Becerileri Geliştirme: İşaret dili ile etkili iletişim kurma pratiği yaparak öğrencilerin özgüvenini artırmak.\n"
                    "• Toplumsal Farkındalık: Engelli bireylerin yaşamı ve toplumdaki yeri hakkında bilinç oluşturmak.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Eğitim İçeriği",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Temel Kavramlar: İşaret dilinin tanımı ve önemi, İşaret dilinin diğer dillerle karşılaştırılması, İşitme engelli topluluğunun kültürü.\n"
                    "• Temel İşaretler: Selamlaşma ve tanışma ifadeleri, Renkler, sayılar ve günlük nesneler, Sık kullanılan fiiller ve sıfatlar.\n"
                    "• İletişim Pratikleri: Çift yönlü iletişim egzersizleri, Rol oyunları ile gerçek hayat senaryoları, Dinleme ve anlama becerileri geliştirme.\n"
                    "• Gelişmiş İşaretler: Duyguların ifadesi, Zaman kavramları ve yönler, Özel terimler ve kavramlar.\n"
                    "• Kültürel Farkındalık: Engelli bireylerle etkili iletişim yöntemleri, Toplumda işaret dilinin yeri ve önemi, İşitme engellilerin hakları ve destek mekanizmaları.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Eğitim Yöntemleri",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• Pratik Uygulamalar: Öğrenilen işaretlerin günlük yaşamda kullanılması.\n"
                    "• Görsel Materyaller: Video ve resimlerle desteklenmiş ders materyalleri.\n"
                    "• Etkileşimli Oyunlar: Öğrenmeyi eğlenceli hale getiren grup çalışmaları.\n"
                    "• Deneyim Paylaşımı: İşitme engelli bireylerle yapılan etkileşimli oturumlar.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "İşaret dili eğitimi, sadece bir iletişim aracı olmanın ötesinde, toplumsal eşitlik ve empati yaratma yolunda önemli bir adımdır. Herkesin işaret dilini öğrenmesi, toplumsal engelleri aşmak ve daha kapsayıcı bir dünya oluşturmak için atılacak önemli bir adımdır. Bu eğitimle, hem işitme engelli bireylerin hayatına dokunabiliriz hem de toplumsal bilinçlenmeyi artırabiliriz. Unutmayalım, iletişim her bireyin hakkıdır!",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}