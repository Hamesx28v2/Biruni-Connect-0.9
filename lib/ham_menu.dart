import 'package:biruni_connect/InfoButtons/akademik_takvim_page.dart';
import 'package:biruni_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import
import 'ayarlar.dart';
import 'SanalTur/sanal_tur.dart';

class HamburgerMenu extends StatefulWidget {
  const HamburgerMenu({super.key});

  @override
  _HamburgerMenuState createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  String _selectedCategory = 'Kampüs Hakkında'; // İlk dropdown başlangıç değeri
// İkinci dropdown başlangıç değeri

  final TextStyle menuTextStyle = TextStyle(
    fontSize: 16.0, // Menü öğeleriyle aynı yazı boyutu
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Menü Başlığı
          const DrawerHeader(
            decoration: BoxDecoration(
              color:
                  Color.fromARGB(255, 255, 255, 255), // Changed color to orange
            ),
            child: Center(
              child: Image(
                image: AssetImage(
                    'assets/images/bir.png'), // Add your image path here
                height: 200.0,
                width: 200.0,
              ),
            ),
          ),
          // Ana Sayfa Butonu
          ListTile(
            title: const Text('Ana Sayfa', style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pop(context); // Menüyü kapat
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          // Akademik Programlar Butonu
          ListTile(
            leading: Icon(Icons.school),
            title: const Text('Akademik Programlar',
                style: TextStyle(fontSize: 16.0)),
            onTap: () {
              Navigator.pop(context); // Menüyü kapat
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AkademikTakvimPage()),
              );
            },
          ),
          // İlk Dropdown (Kategoriler)
          ListTile(
            title: Row(
              children: [
                const Text('', style: TextStyle(fontSize: 16.0)),
                DropdownButton<String>(
                  value: _selectedCategory, // Varsayılan değer
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black, fontSize: 16.0),
                  underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCategory = newValue!;
                    });
                    // Seçilen kategoriye göre işlem yapılabilir
                    switch (newValue) {
                      case 'Kampüs Hakkında':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KampusHakkindaPage()),
                        );
                        break;
                      case 'Sanal Tur':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sanal()),
                        );
                        break;
                      case 'Kampüs Rehberi':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KampusRehberiPage()),
                        );
                        break;
                    }
                  },
                  items: <String>[
                    'Kampüs Hakkında',
                    'Sanal Tur',
                    'Kampüs Rehberi'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          // İkinci Dropdown (Ayarlar)
          ListTile(
            title: const Text('İletişim ve Destek'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IletisimDestekPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tarihçe'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakkimizdaPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Ayarlar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AyarlarPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Ana Sayfa Sayfası
class AnaSayfaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: const Center(
        child: Text('Ana Sayfa İçeriği'),
      ),
    );
  }
}

// Akademik Programlar Sayfası
class AkademikProgramlarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akademik Programlar'),
      ),
      body: const Center(
        child: Text('Akademik Programlar İçeriği'),
      ),
    );
  }
}

// Sayfa 5: İletişim ve Destek
class IletisimDestekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İletişim ve Destek'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatbotPage()),
                );
              },
              child: const Text('Chatbot'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DestekPage()),
                );
              },
              child: const Text('Destek'),
            ),
          ],
        ),
      ),
    );
  }
}

// Chatbot Sayfası
class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add({'sender': 'user', 'text': message});
      _messages.add({'sender': 'bot', 'text': _getBotResponse(message)});
    });
    _controller.clear();
  }

  String _getBotResponse(String message) {
    // Simple bot response logic
    if (message.toLowerCase().contains('merhaba')) {
      return 'Merhaba! Size nasıl yardımcı olabilirim?';
    } else if (message.toLowerCase().contains('üniversite olanakları')) {
      return 'Üniversitemizde kütüphane, spor salonu, sağlık hizmetleri gibi birçok olanak bulunmaktadır.';
    } else {
      return 'Üzgünüm, bu konuda size yardımcı olamıyorum.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatbot'),
      ),
      body: Column(
        children: [
          // Example questions panel
          Container(
            color: Colors.blue[50],
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Örnek Sorular:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text('- Merhaba'),
                Text('- Üniversite olanakları nelerdir?'),
                Text('- Kütüphane hizmetleri hakkında bilgi verir misiniz?'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ListTile(
                  title: Align(
                    alignment: message['sender'] == 'user'
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: message['sender'] == 'user'
                            ? Colors.blue[100]
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(message['text']!),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Mesajınızı yazın...',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Destek Sayfası
class DestekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destek'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Öğrenci İşleri Direktörlüğü',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Mail Adresi: ogrenciisleri@biruni.edu.tr'),
              SizedBox(height: 20),
              Text(
                'Kader ÇALIŞKAN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('Sorumlu'),
              Text('kaderc@biruni.edu.tr'),
              SizedBox(height: 20),
              Text(
                'Fırat Erdi BOZKURT',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('Öğrenci İşleri Uzmanı'),
              Text('fbozkurt@biruni.edu.tr'),
              SizedBox(height: 20),
              Text(
                'Yonca ELİÇABUK',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('Öğrenci İşleri Uzmanı'),
              Text('yelicabuk@biruni.edu.tr'),
              SizedBox(height: 20),
              Text(
                'Selin Sude KUTLU',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('Ön Banko Görevlisi'),
              Text('skutlu@biruni.edu.tr'),
              SizedBox(height: 20),
              Text(
                'Rümeysa Faika EMİROĞLU',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('Ön Banko Görevlisi'),
              Text('rumeysae@biruni.edu.tr'),
              SizedBox(height: 20),
              Text(
                'Ece Nur YÜCEL',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('Ön Banko Görevlisi'),
              Text('ecenury@biruni.edu.tr'),
            ],
          ),
        ),
      ),
    );
  }
}

// Sayfa 6: Hakkımızda
class HakkimizdaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarhiçe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Tarihçe',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Tıp, Eczacılık, Astronomi, Matematik, Fizik, Coğrafya ve Tarih başta olmak üzere birçok alanda önemli eserler vererek dünya bilim tarihine “Evrensel Deha” olarak adını yazdıran Türk bilim insanı Ebu Reyhan El-Biruni’den ilham alarak vakıf üniversiteleri arasında yerini alan Biruni Üniversitesi, tamamı sağlık alanıyla ilgili 6 Fakülte ve 1 Meslek Yüksekokulu ile 2014-2015 eğitim öğretim yılı itibariyle akademik faaliyetlerine başlamıştır.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Biruni Üniversitesi, 27.02.2014 tarihli, 28926 sayılı resmi gazetede yayımlanan, 20.02.2014 kabul tarihli ve 6525 nolu “Bazı Kanun ve Kanun Hükmünde Kararnamelerde Değişiklik Yapılması Hakkında Kanun”un 13. maddesi uyarınca; 28/3/1983 tarihli ve 2809 sayılı Yükseköğretim Kurumları Teşkilatı Kanunu’na eklenen, Ek Madde 156 kapsamında kurulmuştur.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Additional Pages for navigation
class KampusHakkindaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampüs Hakkında'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Üniversite Olanakları (Facilities):',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Kütüphane hizmetleri, çalışma odaları, rezervasyon seçenekleri.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, height: 1.5),
              ),
              const SizedBox(height: 10),
              const Text(
                'Spor salonu, yüzme havuzu, fitness merkezi gibi fiziksel ve sportif imkanlar.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, height: 1.5),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sağlık hizmetleri, danışmanlık merkezleri ve kariyer geliştirme merkezleri.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, height: 1.5),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    const url = 'https://www.google.com/maps';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text('Google Maps\'te Aç'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sanal extends StatelessWidget {
  const Sanal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SanalTur(),
    );
  }
}

class KampusRehberiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampüs Rehberi'),
      ),
      body: const Center(
        child: Text('Kampüs Rehberi İçeriği'),
      ),
    );
  }
}
