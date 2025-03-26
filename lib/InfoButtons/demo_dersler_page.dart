import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:biruni_connect/ham_menu.dart';

class DemoDerslerPage extends StatelessWidget {
  const DemoDerslerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Dersler'),
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
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Çocuklarda Ahlak Gelişimi" Biruni Üniversitesi',
            'https://youtu.be/DGaxc4-Me_0',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "NEGLERİA FOWLERİ (Beyin Yiyen Amip)" Biruni Üniversitesi',
            'https://youtu.be/hiXsSB4GUlk',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "İşitme Ölçümü" Öğr. Gör. İlayda Kadan',
            'https://youtu.be/dZ5KwfXtDig',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Tıbbi Görüntüleme Cihazları İle Beyin Bölgesinin İncelenmesi" Öğr. Gör. Binnaz Takkasız',
            'https://youtu.be/UND5L9wym1M',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Optisyenlik Atölyesi" Öğr. Gör. İsmail Ekinci',
            'https://youtu.be/56vCh1u52N8',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Günlük Yaşam Aktiviteleri ve Adaptif Aletler" Öğr. Gör. Safa Heybet',
            'https://youtu.be/M9BJk68zrtk',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Hotpack" Öğr. Gör. Safa Heybet',
            'https://youtu.be/9Z74f07mb20',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Risk Yönetimi Ve Değerlendirme" Öğr. Gör. Mustafa Yürük',
            'https://youtu.be/bxsrGv7nBKo',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Görsel Uyarılmış Potansiyeller Uygulaması" Öğr. Gör. Seçil Tunalı',
            'https://youtu.be/sHm4yo_WRLQ',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Hemodiyaliz Makinelerinin Kullanımı" Öğr. Gör. Özlem Düzgün',
            'https://youtu.be/wi6PE8u_Hb0',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Protez Nedir ve Türleri Nelerdir?" Öğr. Gör. Doğa Şimşek',
            'https://youtu.be/GP28MAUQXS0',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Bilgisayar Sistemleri, Bilgisayar ve Gelecek" Dr. Öğr. Üyesi Şenol PAZAR',
            'https://youtu.be/S6nu-_FmGG0',
          ),
          _buildGridItem(
            context,
            'Mühendislik ve Doğa Bilimleri Fakültesi "Biyomedikal Cihazlarda Kalibrasyon" Öğr. Gör. Sarper KARA',
            'https://youtu.be/gI9fRCihQ-g',
          ),
          _buildGridItem(
            context,
            'Diş Hekimliği Fakültesi "Diş Morfolojisi" Öğr. Gör. Semih SARP',
            'https://youtu.be/S3Cp9kMHNiI',
          ),
          _buildGridItem(
            context,
            'Meslek Yüksekokulu "Afet Kültürü" Öğr. Gör. Fatih KOCALAN',
            'https://youtu.be/Ok6F8XGeBy4',
          ),
          _buildGridItem(
            context,
            'Beslenme ve Diyetetik “Covid 19’da Hastalarında Beslenme” Prof. Dr. Fatma Çelik',
            'https://youtu.be/N5FQZHFbxao',
          ),
          _buildGridItem(
            context,
            'Bilgisayar Mühendisliği “Yapay Zeka ve Bilgisayar Mühendisliğinin Geleceği” Prof. Dr. Özgür Koray Şahingöz',
            'https://youtu.be/mgSvh-WeDP4',
          ),
          _buildGridItem(
            context,
            'Çocuk Gelişimi (Lisans Programı) “Gelişimsel Bir Araç Olarak Çocuk Kitapları” Öğr. Gör. Damla Pektaş',
            'https://youtu.be/5pcttDhKWAo',
          ),
          _buildGridItem(
            context,
            'Diş Hekimliği Fakültesi “Restorasyon Yapımı” Prof. Dr. Naime Bilinç Bulucu',
            'https://youtu.be/ojxuSNY1Hb4',
          ),
          _buildGridItem(
            context,
            'Eczacılık Fakültesi “Son Teknolojileri Birlikte Keşfedelim!” Prof. Dr. İsmail Tuncer Değim',
            'https://youtu.be/HL3m04C7b-k',
          ),
          _buildGridItem(
            context,
            'Ergoterapi “Ergoterapi’de El Fonksiyonlarına Yönelik Değerlendirme ve Müdahale” Dr. Öğr. Üyesi Başar Öztürk & Öğr. Gör. Remziye Akarsu',
            'https://youtu.be/OwHmYFHKJY8',
          ),
          _buildGridItem(
            context,
            'Fizyoterapi ve Rehabilitasyon “Sağlıklı Yaşam ve Fiziksel Aktiviteler” Prof. Dr. Arzu Razak Özdinçler',
            'https://youtu.be/jGl0QiYJgmc',
          ),
          _buildGridItem(
            context,
            'Hemşirelik “İnfertil Çiftlere Yaklaşım” Prof. Dr. Nezihe Beji Kızılkaya',
            'https://youtu.be/JSXKauR9spQ',
          ),
          _buildGridItem(
            context,
            'Mimarlık ve Çevre Tasarımı “Ölçü-Oran Kavramı” Dr. Öğr. Üyesi Neşe Başak Yurttaş',
            'https://youtu.be/yDdO4RSBNWU',
          ),
          _buildGridItem(
            context,
            'Moleküler Biyoloji ve Genetik “Covid- 19 ve PCR” Dr. Öğr. Üyesi Lütfiye Karcıoğlu',
            'https://youtu.be/TPmW7fPnq5o',
          ),
          _buildGridItem(
            context,
            'Odyoloji “Saf Ses Odyometri Testi – Altın Standart” Dr. Öğr. Üyesi Handan Turan Dizdar',
            'https://youtu.be/DTKfjCYuupE',
          ),
          _buildGridItem(
            context,
            'Sosyal Hizmet “İnsan Davranışı ve Sosyal Çevre” Dr. Öğr.Üyesi Tayfun Yeşilşerit',
            'https://youtu.be/LIR5cYeMzZ4',
          ),
          _buildGridItem(
            context,
            'Tıp Fakültesi “Kanserde Erken Tanı”Prof. Dr. Dilek Sema Arıcı',
            'https://youtu.be/etLXyhTrbEQ',
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, String url) {
    return GestureDetector(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 178, 204, 250),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}