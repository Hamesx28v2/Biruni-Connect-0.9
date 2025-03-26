import 'package:flutter/material.dart';
import 'ham_menu.dart';

// Tüm duyurular sayfası
// ignore: use_key_in_widget_constructors
class AllAnnouncementsPage extends StatelessWidget {
  final List<Map<String, String>> announcements = [
    {
      'title': 'Bahar dönemi kayıtları başladı!',
      'details': 'Bahar dönemi kayıt detayları burada.'
    },
    {
      'title': 'Yeni etkinlikler takvimi yayınlandı!',
      'details': 'Etkinlik takvimi detayları burada.'
    },
    {
      'title': 'Mezuniyet töreni detayları açıklandı!',
      'details': 'Mezuniyet töreni ile ilgili detaylar burada.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tüm Duyurular'),
        backgroundColor: Colors.blue.shade900,
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  // Sağ taraftaki menüyü aç
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: const HamburgerMenu(),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          final announcement = announcements[index];
          return ListTile(
            title: Text(announcement['title']!),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnnouncementDetailsPage(
                    title: announcement['title']!,
                    details: announcement['details']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Duyuru detay sayfası
class AnnouncementDetailsPage extends StatelessWidget {
  final String title;
  final String details;

  const AnnouncementDetailsPage(
      {super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(details),
      ),
    );
  }
}