import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class IsSagligiVeGuvenligiEgitimiPage extends StatelessWidget {
  const IsSagligiVeGuvenligiEgitimiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İş Sağlığı ve Güvenliği Eğitimi"),
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
                "İş Sağlığı ve Güvenliği Eğitimi",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Bu eğitim, çalışanların iş yerinde güvenli çalışma koşullarını sağlamaları, potansiyel riskleri tanımaları ve acil durum yönetimi konularında bilinçlenmeleri amacıyla hazırlanmıştır.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Eğitim İçeriği",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "• İş sağlığı ve güvenliği kavramları\n"
                    "• Risk analizi ve yönetimi\n"
                    "• Kişisel koruyucu donanım kullanımı\n"
                    "• Acil durum planları ve tahliye prosedürleri\n"
                    "• Ergonomi ve psiko-sosyal faktörler\n"
                    "• Kaza yönetimi ve raporlama\n"
                    "• İş Sağlığı ve Güvenliği Nedir?\n"
                    "• Yasal Düzenlemeler ve Standartlar\n"
                    "• 6331 sayılı İş Sağlığı ve Güvenliği Kanunu\n"
                    "• Uluslararası standartlar (ISO, OHSAS)\n"
                    "• Risk Yönetimi\n"
                    "• Risk Analizi ve Değerlendirmesi\n"
                    "• Tehlike tanımlama\n"
                    "• Risk değerlendirme yöntemleri (matrisler, 5N1K)\n"
                    "• Risk Kontrol Yöntemleri\n"
                    "• Kaçınma, Azaltma, Ortadan kaldırma\n"
                    "• Kişisel koruyucu donanım (KKD) kullanımı\n"
                    "• İş Yerinde Güvenli Davranışlar\n"
                    "• Güvenli Çalışma Prensipleri\n"
                    "• Etkili İletişim ve İş Birliği\n"
                    "• Kaza ve Olay Yönetimi\n"
                    "• Kaza bildirimi ve olay inceleme süreci\n"
                    "• Kişisel Koruyucu Donanım (KKD)\n"
                    "• KKD Tanımı ve Önemi\n"
                    "• KKD Türleri ve Kullanım Alanları\n"
                    "• Acil Durum Yönetimi\n"
                    "• Acil Durum Planları\n"
                    "• Ergonomi ve Psiko-sosyal Faktörler\n"
                    "• Stres Yönetimi ve Psiko-sosyal Riskler\n"
                    "• Eğitim ve Bilinçlendirme\n"
                    "• Eğitim İhtiyaç Analizi\n"
                    "• Çalışanların Rolü ve Sorumlulukları\n"
                    "• Uygulamalı Eğitim ve Senaryolar",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Kimler Katılmalı?",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Tüm çalışanlar, yöneticiler ve iş sağlığı ve güvenliği uzmanları.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Eğitim Yöntemi",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Teorik sunumlar, grup çalışmaları ve uygulamalı senaryolar.",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Neden Katılmalısınız?",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "İş yerinde güvenliği artırmak, iş kazalarını önlemek ve çalışan sağlığını korumak için gerekli bilgi ve becerileri kazanmak için bu eğitimi kaçırmayın!",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}