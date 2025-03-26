import 'package:flutter/material.dart';
import 'localization.dart';

class LanguageProvider with ChangeNotifier {
  String _currentLanguage = 'tr';

  String get currentLanguage => _currentLanguage;

  set currentLanguage(String languageCode) {
    _currentLanguage = languageCode;
    AppLocalizations.load(languageCode);
    notifyListeners(); // Dil değiştiğinde UI'yı güncelle
  }
}
