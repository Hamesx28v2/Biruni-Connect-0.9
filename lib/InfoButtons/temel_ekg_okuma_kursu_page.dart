import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class TemelEkgOkumaKursuPage extends StatelessWidget {
  const TemelEkgOkumaKursuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Temel EKG Okuma Kursu"),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "🌟 Kardiyoloji Alanında Kendinizi Geliştirin! 🌟",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Sağlık alanında kendinizi daha da ileri taşımak, kariyerinizi geliştirmek ve hastalarınıza daha iyi hizmet sunmak ister misiniz? Temel EKG Okuma Kursu ile bu hedeflerinize ulaşmak için mükemmel bir fırsat sunuyoruz!",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Neden EKG Okuma Kursuna Katılmalısınız?",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Kalp sağlığı, modern tıbbın en kritik alanlarından biridir. EKG (elektrokardiyografi), kalp ritminin ve fonksiyonlarının değerlendirilmesinde temel bir araçtır. Bu kurs, EKG okuma becerilerinizi geliştirmenin yanı sıra, klinik uygulamalarda güvenle kullanabileceğiniz bir bilgi seti sunar.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Kursun Kazanımları",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "• Kapsamlı Bilgi Edinimi: EKG’nin temel kavramlarını öğrenin; dalga formlarının, normal ve anormal ritimlerin nasıl okunacağını keşfedin.\n\n"
                  "• Pratik Uygulamalar: Teorik bilgilerinizi pekiştirmek için uygulamalı dersler ile EKG okuma pratiği yapın. Gerçek vakalar üzerinden çalışma fırsatı bulacaksınız.\n\n"
                  "• Uzman Eğitmen Desteği: Alanında deneyimli uzman eğitmenlerimiz, kurs boyunca sizlere rehberlik edecek ve sorularınıza yanıt verecektir.\n\n"
                  "• Sertifika: Kurs sonunda gerçekleştireceğiniz bilgi testi ile başarılı olan katılımcılara sertifika verilecektir. Bu sertifika, kariyerinize değer katacak önemli bir belgedir.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Kimler Katılabilir?",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Tıp alanında eğitim almış herkes bu kursa katılabilir. Ayrıca, sağlık sektöründe kariyerine yeni başlayanlar için de mükemmel bir başlangıçtır.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Kurs İçeriği",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "• EKG’ye Giriş: EKG’nin temel prensipleri ve tarihçesi.\n"
                  "• EKG’nin Temel Bileşenleri: P dalgası, QRS kompleksi, T dalgası ve bunların anlamları.\n"
                  "• EKG Çekimi: Elektrot yerleştirme teknikleri ve dikkat edilmesi gereken noktalar.\n"
                  "• EKG Değerlendirme: Normal ve anormal ritimlerin analizi, EKG bulgularının klinik önemi.\n"
                  "• Sık Görülen EKG Anomalileri: Aritmiler, iskemik değişiklikler ve elektrolit dengesizliklerinin etkileri.\n"
                  "• Pratik Uygulamalar: Örnek vakalar üzerinden EKG analizi ve grup çalışmaları.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Detaylar",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "📅 Tarih: 19 Kasım\n"
                  "📍 Yer: Biruni Üniversitesi\n"
                  "⏰ Saat: 10.00-14.00\n"
                  "💻 Kayıt İçin: birsem.biruni.edu.tr",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Sınırlı Kontenjan!\n"
                  "Kursumuza olan ilgi her geçen gün artıyor. Sınırlı kontenjan nedeniyle yerinizi hızlıca ayırtmayı unutmayın! Bu fırsatı kaçırmayın, geleceğin sağlık profesyonelleri arasında yerinizi alın!\n\n"
                  "Kendinize bir yatırım yapın, kalp sağlığında uzmanlaşın ve mesleğinizde fark yaratın! Temel EKG Okuma Kursu ile kariyerinize yeni bir yön verin!",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "📞 Daha fazla bilgi için bizimle iletişime geçin: [İletişim Bilgileri]",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}