import 'package:url_launcher/url_launcher.dart';

void launchYouTubeVideo() async {
  const url = 'https://www.youtube.com/watch?v=T7Csn6DGqSU'; // YouTube URL
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication, // Harici uygulamada açar
    );
  } else {
    // Eğer URL açılamıyorsa hata göster
    throw 'URL açılamıyor: $url';
  }
}