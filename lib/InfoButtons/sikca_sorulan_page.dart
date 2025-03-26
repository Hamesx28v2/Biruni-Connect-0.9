import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class SikcaSorulanPage extends StatefulWidget {
  const SikcaSorulanPage({super.key});

  @override
  State<SikcaSorulanPage> createState() => _SSSPageState();
}

class _SSSPageState extends State<SikcaSorulanPage> {
  final List<Map<String, String>> faqList = [
    {
      "question": "Kütüphanenin olanakları nelerdir?",
      "answer":
      "Kütüphane, öğrencilere geniş bir kaynak koleksiyonu ve sessiz çalışma alanları sunar."
    },
    {
      "question": "Yeni bir topluluk kurma şartları nelerdir?",
      "answer":
      "En az 10 üye ile bir başvuru dilekçesi oluşturmanız gerekmektedir."
    },
    {
      "question": "Topluluklara üye olmak ücretli mi?",
      "answer": "Hayır, topluluk üyelikleri ücretsizdir."
    },
    {
      "question": "Öğrenci Topluluklarına sağlanan olanaklar nelerdir?",
      "answer":
      "Salon kullanımları, teknik destek ve organizasyon desteği sağlanmaktadır."
    },
    {
      "question":
      "Öğrenci Toplulukları üniversite içinde hangi alanlarda faaliyet gösteriyor?",
      "answer":
      "Kültür, sanat, spor ve bilimsel araştırma alanlarında faaliyet göstermektedir."
    },
    {
      "question": "Biruni Üniversitesi’nde kaç tane öğrenci topluluğu vardır?",
      "answer":
      "Biruni Üniversitesi’nde toplam 25 öğrenci topluluğu bulunmaktadır."
    },
    {
      "question": "Biruni Üniversitesi ne gibi sağlık hizmetleri sunmaktadır?",
      "answer":
      "Üniversite içerisinde revir hizmeti ve psikolojik danışmanlık sağlanmaktadır."
    },
    {
      "question": "Biruni Üniversitesi’ne nasıl ulaşabilirim?",
      "answer": "Toplu taşıma ve servis imkanlarıyla kolayca ulaşabilirsiniz."
    },
    {
      "question": "Biruni Üniversitesi’nde spor olanakları nelerdir?",
      "answer": "Basketbol, voleybol sahaları ve fitness salonu bulunmaktadır."
    },
    {
      "question":
      "Sizi diğer üniversitelerden farklı kılan özellikleriniz nelerdir?",
      "answer":
      "Öğrenci odaklı eğitim ve modern kampüs olanakları ile farklılık yaratıyoruz."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sıkça Sorulan Sorular'),
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
        backgroundColor: Colors.teal,
      ),
      endDrawer: const HamburgerMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var faq in faqList)
                FAQTile(
                  question: faq["question"]!,
                  answer: faq["answer"]!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQTile extends StatefulWidget {
  final String question;
  final String answer;

  const FAQTile({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<FAQTile> createState() => _FAQTileState();
}

class _FAQTileState extends State<FAQTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.question,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.teal,
            ),
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                widget.answer,
                style: const TextStyle(fontSize: 14, height: 1.5),
              ),
            ),
        ],
      ),
    );
  }
}