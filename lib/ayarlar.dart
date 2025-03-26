import 'package:flutter/material.dart';
//import 'language_provider.dart';

class AyarlarPage extends StatefulWidget {
  const AyarlarPage({super.key});

  @override
  _AyarlarPageState createState() => _AyarlarPageState();
}

class _AyarlarPageState extends State<AyarlarPage> {
  @override
  Widget build(BuildContext context) {
    //final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dil Seçin:',
              style: TextStyle(fontSize: 18),
            ),
            DropdownButton<String>(
              //value: languageProvider.currentLanguage,
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
                  //languageProvider.currentLanguage = newValue!;
                });
              },
              items: <String>['tr', 'en', 'ar']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value == 'tr'
                      ? 'Türkçe'
                      : value == 'en'
                          ? 'English'
                          : 'Arabic'),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
