import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class YurtlarPage extends StatelessWidget {
  const YurtlarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yurtlar'),
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
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Öğrencilerin Yeni Nesil Yaşam',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'ŞEHRİN MERKEZİNDE KONUMLANAN BİRUNİ ÜNİVERSİTESİ YURTLARI BAŞARILI OLMANIZ İÇİN HER DETAYI DÜŞÜNÜLMÜŞ YÜKSEK STANDARTLARA SAHİP BİR YAŞAM ALANINI SİZLERE SUNUYOR.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Biruni Kız ve Erkek Yurtları, öğrencinin eğitim yaşamında başarıya odaklanabilmesi için ihtiyacı olan her üniteyi kendisine sunan bir konaklama platformu olduğu kadar; eğitim dışında verdiği hizmetlerle ailesinden ayrı ve uzakta yaşayan bir öğrenci için hayatı kolaylaştıran lüks bir yaşam alanıdır.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Biruni kız ve erkek öğrenci yurdu, öğrencinin psikolojisine, ortak yaşam alışkanlıklarına bağlı kişisel talep ve hayalleri de göz önünde bulundurularak öğrencilerle yapılan araştırmalar sonucu baştan sona sadece öğrenciler için tasarlanmış yeni nesil bir yapılanmaya sahiptir. 1, 2, 3, 4, 5 ve 6 kişilik odalarda isteğe göre farklı konaklama seçenekleri sunmaktadır.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Öğrencinin ihtiyaç duyacağı ve bir ev ortamında sağlanamayacak bütün sosyal imkânları çatısı altında bir araya getirmektedir.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Biruni Üniversitesi öğrencilerine %15 indirim sağlanacaktır. Ayrıca kendi öğrencilerimizin yanı sıra yurt ihtiyacı olan tüm öğrencilere hizmet sunmaktadır.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 40),

              // Hizmetlerimiz başlığı
              const Text(
                'Hizmetlerimiz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // 18 dikdörtgenin bulunduğu 5 satır
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 kolon
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2, // Dikdörtgen boyutunu ayarlama
                ),
                itemCount: 18,
                itemBuilder: (context, index) {
                  List<String> hizmetler = [
                    "Kahvaltı",
                    "Çamaşırhane ve Kurutma",
                    "İnternet",
                    "Ütü Odası",
                    "Shuttle",
                    "Temizlik",
                    "24 Saat Güvenlik",
                    "Etüd Salonları",
                    "Ortak Mutfak",
                    "Dinlenme Odası",
                    "24 Saat Sıcak Su",
                    "Valiz Odası",
                    "Isıtma Soğutma",
                    "Spor Salonu",
                    "Revir",
                    "Basketbol Sahası",
                    "Resepsiyon",
                    "Voleybol Sahası"
                  ];

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          hizmetler[
                          index], // Burada her dikdörtgenin içine yazı ekleniyor
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}