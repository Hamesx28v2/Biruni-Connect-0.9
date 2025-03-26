import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class BolumProgramTanitimPage extends StatelessWidget {
  const BolumProgramTanitimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bölüm Program Tanıtımı'),
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
              'Bölüm Program Tanıtımı',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Bu sayfada bölüm programı hakkında detaylı bilgiler yer alacaktır.',
              style: TextStyle(
                fontSize: 18,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 30),
            // 7 karelik kutu düzeni
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 sütun
                  childAspectRatio: 1.0, // Kare görünümü
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: 7, // 7 item olacak
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Text(
                          _getTextForIndex(index),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
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

  // Her index için içerik sağlayan fonksiyon
  String _getTextForIndex(int index) {
    switch (index) {
      case 0:
        return 'Meslek Yüksekokulu\n'
            'Biruni Üniversitesi Meslek Yüksekokulu, öğrencilere mesleki bilgi ve becerileri kazandırmayı hedefleyen, uygulamalı ve sektörel işbirlikleri ile desteklenen bir eğitim sunarak, iş dünyasının ihtiyaçlarına cevap verebilecek donanımlı ve yetkin meslek profesyonelleri yetiştirmeyi amaçlamaktadır.';
      case 1:
        return 'Mühendislik ve Doğa Bilimleri Fakültesi\n'
            'Biruni Üniversitesi Mühendislik ve Doğa Bilimleri Fakültesi, ileri teknolojiler ve yenilikçi eğitim yöntemleri ile donatılmış, teorik bilgiyi pratiğe dönüştürebilen, problem çözme yetenekleri gelişmiş ve uluslararası düzeyde rekabet edebilecek mühendisler yetiştirmeyi hedeflemektedir.';
      case 2:
        return 'Sağlık Bilimleri Fakültesi\n'
            'Biruni Üniversitesi Sağlık Bilimleri Fakültesi, öğrencilere teorik bilgi ve pratik becerilerin dengeli bir şekilde kazandırıldığı, yenilikçi ve multidisipliner bir eğitim sunarak, sağlık sektöründe yetkin ve nitelikli profesyoneller yetiştirmeyi amaçlamaktadır.';
      case 3:
        return 'Diş Hekimliği Fakültesi\n'
            'Biruni Üniversitesi Diş Hekimliği Fakültesi, öğrencilere diş hekimliği alanında kapsamlı bir eğitim sunarak, teorik bilgi ve klinik becerileri en üst düzeyde kazandırmayı hedeflemektedir. Modern teknolojiyle donatılmış laboratuvarlar ve kliniklerle desteklenen program, etik değerler ve hasta odaklı yaklaşımlarla donanmış, alanında uzman ve yetkin diş hekimleri yetiştirmeyi amaçlamaktadır.';
      case 4:
        return 'Eczacılık Fakültesi\n'
            'Biruni Üniversitesi Eczacılık Fakültesi, öğrencilere ilaç bilimi ve eczacılık alanında derinlemesine bilgi ve pratik beceriler kazandırmayı amaçlamaktadır. Modern laboratuvar imkanları ve yenilikçi eğitim yöntemleri ile donatılmış olan fakülte, etik değerler çerçevesinde topluma hizmet edebilecek, araştırmacı ve nitelikli eczacılar yetiştirmeyi hedeflemektedir.';
      case 5:
        return 'Eğitim Fakültesi\n'
            'Biruni Üniversitesi Eğitim Fakültesi, çağdaş eğitim yöntemleri ve pedagojik yaklaşımlarla donatılmış, alanında uzman ve yenilikçi öğretmenler yetiştirmeyi hedeflemektedir. Öğrencilere teorik bilgi ve pratik deneyim sunarak, eğitim alanında liderlik yapabilecek, yaratıcı ve etkili eğitimciler olma yolunda onları desteklemektedir.';
      case 6:
        return 'Tıp Fakültesi\n'
            'Biruni Üniversitesi Tıp Fakültesi, öğrencilere yüksek kaliteli eğitim ve geniş kapsamlı klinik deneyim sunarak sağlık alanında donanımlı ve yetkin hekimler yetiştirmeyi hedeflemektedir.';
      default:
        return 'Bölüm Programı ${index + 1}'; // Varsayılan metin
    }
  }
}