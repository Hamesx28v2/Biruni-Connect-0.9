import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class ErasmusPage extends StatelessWidget {
  const ErasmusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erasmus Programı'),
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
        backgroundColor: Colors.blue.shade800,
      ),
      endDrawer: const HamburgerMenu(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Başlık
          const Text(
            'About UNIVERSITY',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),

          // Erasmus hakkında açıklama
          const Text(
            'BIRUNI offers 26 programs within the scope of 6 Faculties, Institutes and Vocational Schools, including the Faculty of Medicine, Faculty of Dentistry, Faculty of Pharmacy, Faculty of Health Sciences, Faculty of Education, Faculty of Engineering and Natural Sciences, which include all health-related departments.',
            style: TextStyle(fontSize: 16.0),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20.0),

          // Görsel
          Center(
            child: Image.asset(
              'assets/images/erasmus2.png', // Erasmus ile ilgili logo veya görsel
              height: 200.0,
              width: 500.0,
            ),
          ),
          const SizedBox(height: 20.0),

          // "EXPERIENCES" Başlığı
          const Text(
            'EXPERIENCES',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),

          _buildExperienceItem('Study Mobility', 78),
          _buildExperienceItem('Internship Mobility', 90),
          _buildExperienceItem('Staff Mobility', 62),
          _buildExperienceItem('Incoming', 85),

          const SizedBox(height: 20.0),

          // Diğer bilgileri içeren bölümler
          const Text(
            'ABOUT ISTANBUL',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10.0),

          const Text(
            'INSURE : According to the immigration laws of Turkey, students are required to prove that they have health insurance that covers the total duration of their stay in Turkey, while they are applying for a Student Residence Permit.',
            style: TextStyle(fontSize: 16.0),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20.0),

          // Bilgilendirme Linkleri
          GestureDetector(
            onTap: () {
              // Link açma işlemi
              // Example: open a URL in browser or a new page
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'Erasmus Öğrencileri için Rehber',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: () {
              // Link açma işlemi
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                'Erasmus Akademik Takvimi',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Yüzde gösterimi için yardımcı widget
  Widget _buildExperienceItem(String title, int percentage) {
    return Column(
      children: [
        // Başlık
        Text(
          title,
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        // Yüzde
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(50.0), // Yuvarlak tasarım
          ),
          child: Text(
            '$percentage%',
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
