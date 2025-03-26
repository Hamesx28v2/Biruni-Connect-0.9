import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class CagdasVeYenilikciEgitimPage extends StatelessWidget {
  const CagdasVeYenilikciEgitimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Çağdaş ve Yenilikçi Eğitim Programları'), // Başlık aynı kalacak
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Çağdaş ve Yenilikçi Eğitim Yöntemleri', // Başlık en üstte
              style: TextStyle(
                fontSize: 28, // Başlık boyutunu eski haline getirdim (56 -> 28)
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Üniversitemiz, geliştirdiği çağdaş ve yenilikçi 10 eğitim yöntemiyle öğrencilerin düşünce sisteminin gelişmesine katkı sağlıyor. '
                  'Böylelikle öğrencilerimiz, bilgiyi daha kalıcı şekilde öğrenebiliyor.\n\n'
                  '“Öğrenme, kişiye özeldir” diyen Üniversitemiz geliştirdiği eğitim yöntemleriyle öğrencilerinin öğrenmesine ve öğrendiği bilgiyi '
                  'pratikleştirerek uygulamaya aktarmasına olanak sağlayan yöntemler geliştirdi. İşte, öğrencilerimizin düşünce sistemlerini geliştiren 10 eğitim yöntemimiz:',
              style: TextStyle(
                fontSize: 18, // Metin boyutunu eski haline getirdim (36 -> 18)
                height: 1.6,
              ),
            ),
            const SizedBox(
                height: 30), // Metin ve dikdörtgenler arasında boşluk
            // 10 Dikdörtgeni oluşturuyoruz
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 sütun şeklinde yerleşim
                  crossAxisSpacing: 16.0, // Sütunlar arasındaki boşluk
                  mainAxisSpacing: 16.0, // Satırlar arasındaki boşluk
                ),
                itemCount: 10, // 10 öğe
                itemBuilder: (context, index) {
                  // 10 farklı metni sırayla yerleştiriyoruz
                  List<String> descriptions = [
                    "BirDeHa\nBilişsel gelişim ve performans artışına yönelik, etkileşimli, aktif katılımlı eğitim modelidir. Öğrenciler, ders notlarına ve materyallere önceden ulaşarak derse hazırlanır. Pandemi sürecinde kesintisiz eğitim sağlanmıştır.",
                    "BirBilginOl\nBilginin aktarılması ve kalıcılığını sağlamak amacıyla uygulanan modeldir. Öğrenciler, bu modelle derslerde daha başarılı olmaktadır.",
                    "BirDüşEğit\nEleştirel Düşünce Uygulama ve Araştırma Merkezi’nde verilen eğitimler ile öğrencilerin eleştirel düşünme, analiz yapabilme ve doğru karar verebilme becerileri kazandırılmaktadır.",
                    "BirBilPar\nBilimsel araştırma ve proje arkadaşlığı programı ile öğrenciler, projelerde birlikte çalışarak akademisyenliğe ilk adımlarını atmaktadır.",
                    "BirAkAr\nAkran mentorlüğü programı ile yeni öğrenciler, üst sınıflardan mentorlar sayesinde üniversite hayatına uyum sağlar ve derslerde başarılarını artırırlar.",
                    "BirEBir\nAkademik Danışmanlar, öğrencilere akademik ve sosyal uyum süreçlerinde rehberlik eder, ders seçimi ve kariyer planlamasında destek sağlar.",
                    "BirBirEt\nÖğrenci topluluklarının düzenlediği sosyal, kültürel ve sportif etkinlikler ile öğrenciler, iletişim becerilerini ve takım çalışması yetkinliklerini geliştirirler.",
                    "BirKarDan\nKariyer yolculuğunda öğrencilere sektör yetkilileri ve uzmanlarla buluşma fırsatı sunar, mesleki eğitim ve iş imkanları sağlar.",
                    "BirSemSer\nSürekli Eğitim Merkezi’nde verilen eğitimlerle öğrenciler, mesleki ve kişisel gelişim eğitimleri alır ve sertifika kazanırlar.",
                    "BirBirİleri\nGirişimcilik ve Kuluçka Eğitimleri ile öğrenciler, girişimcilik dünyasına hazırlanır. Eğitim hayatına devam eden veya mezun öğrenciler için düzenlenmektedir."
                  ];

                  return Container(
                    padding: const EdgeInsets.all(
                        20.0), // Dikdörtgenin iç padding'ini artırdık
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text(
                        descriptions[index], // İlgili metin içerik ekleniyor
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize:
                          16, // Metin boyutunu eski haline getirdim (32 -> 16)
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}