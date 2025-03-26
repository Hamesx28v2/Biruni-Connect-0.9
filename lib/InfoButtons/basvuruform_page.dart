import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class BasvuruFormPage extends StatefulWidget {
  const BasvuruFormPage({super.key});

  @override
  _BasvuruFormPageState createState() => _BasvuruFormPageState();
}

class _BasvuruFormPageState extends State<BasvuruFormPage> {
  final _formKey =
  GlobalKey<FormState>(); // Formun geçerliliğini kontrol etmek için
  final TextEditingController _adController = TextEditingController();
  final TextEditingController _soyadController = TextEditingController();
  final TextEditingController _dogumTarihiController = TextEditingController();
  final TextEditingController _tcKimlikController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Başvuru Formu"),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Ad
              TextFormField(
                controller: _adController,
                decoration: const InputDecoration(
                  labelText: "Ad",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen adınızı girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              // Soyad
              TextFormField(
                controller: _soyadController,
                decoration: const InputDecoration(
                  labelText: "Soyad",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen soyadınızı girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              // Doğum Tarihi
              TextFormField(
                controller: _dogumTarihiController,
                decoration: const InputDecoration(
                  labelText: "Doğum Tarihi (GG/AA/YYYY)",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen doğum tarihinizi girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              // TC Kimlik Numarası
              TextFormField(
                controller: _tcKimlikController,
                decoration: const InputDecoration(
                  labelText: "TC Kimlik No",
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length != 11) {
                    return 'Lütfen geçerli bir TC Kimlik No girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              // E-posta
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "E-posta Adresi",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Lütfen geçerli bir e-posta adresi girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Gönder Butonu
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form geçerli olduğunda yapılacak işlem
                    // Örneğin, verileri bir veritabanına kaydedebilirsiniz
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Başvuru Gönderildi')));
                    Navigator.pop(context); // Başvuru sayfasına geri dön
                  }
                },
                child: const Text("Başvuruyu Gönder"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}