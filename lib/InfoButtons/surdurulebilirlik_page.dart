import 'package:flutter/material.dart';
import 'package:biruni_connect/ham_menu.dart';

class SurdurulebilirlikPage extends StatelessWidget {
  const SurdurulebilirlikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sürdürülebilirlik'),
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
        backgroundColor: Color.fromARGB(255, 68, 148, 233),
      ),
      endDrawer: const HamburgerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildButton(context, 'No Poverty'),
            _buildButton(context, 'Zero Hunger'),
            _buildButton(context, 'Good Health and Well-Being'),
            _buildButton(context, 'Quality Education'),
            _buildButton(context, 'Gender Equality'),
            _buildButton(context, 'Clean Water and Sanitation'),
            _buildButton(context, 'Affordable and Clean Energy'),
            _buildButton(context, 'Decent Work and Economic Growth'),
            _buildButton(context, 'Industry, Innovation, and Infrastructure'),
            _buildButton(context, 'Reduced Inequalities'),
            _buildButton(context, 'Sustainable Cities and Communities'),
            _buildButton(context, 'Responsible Consumption and Production'),
            _buildButton(context, 'Climate Action'),
            _buildButton(context, 'Life Below Water'),
            _buildButton(context, 'Life on Land'),
            _buildButton(context, 'Peace and Justice Strong Institutions'),
            _buildButton(context, 'Partnerships for the Goals'),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          if (title == 'No Poverty') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('No Poverty'),
                content: const Text(
                    'Aşırı yoksulluğu ortadan kaldırmaya yönelik küresel çabalar, COVID-19 pandemisi ve 2020-22 döneminde bir dizi büyük şok nedeniyle önemli gerilemelerle karşı karşıya kaldı. Pandemi, on yıllardır ilk kez 2020de aşırı yoksulluğun artmasına neden olarak küresel ilerlemeyi üç yıl tersine çevirdi. Toparlanma dengesizdi ve düşük gelirli ülkeler geride kaldı. Devam eden polikrisiyle birlikte, yoksulluğun 2030 yılına kadar sona ermesi, özellikle ekonomik streslerle başa çıkacak mali kapasiteye sahip olmayan bölgelerde, giderek daha fazla ulaşılamıyor gibi görünüyor. bu yazının çıkmasını istiyorum'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Zero Hunger') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Zero Hunger'),
                content: const Text(
                  'Küresel olarak açlık, 2022\'de dünya nüfusunun yaklaşık 10\'undan 1\'i ile karşı karşıya kalırken, 2,4 milyar insan orta ila şiddetli gıda güvensizliği yaşadı. Aynı yıl, dünya çapındaki ülkelerin yaklaşık yüzde 60\'ı çatışmalar ve kesintiye uğramış tedarik zincirleri nedeniyle gıda fiyatlarında önemli artışlar gördü. Sıfır açlığa ulaşmak, gıda sistemlerini sürdürülebilirliğe, dayanıklılığa ve eşitliğe dönüştürmek için yoğunlaştırılmış çabalar gerektirir. Ayrıca, diyet, beslenme, sağlık ve hijyendeki iyileştirmelerin hızlandırılması, kronik yetersiz beslenmeden muzdarip çocuk sayısını yarıya indirme hedefine ulaşmak için çok önemlidir.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Good Health and Well-Being') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Good Health and Well-Being'),
                content: const Text(
                  'Küresel sağlık hedeflerine ulaşmak, anne ölümleri, bulaşıcı olmayan başlıca hastalıklardan kaynaklanan erken ölümler ve temel sağlık hizmetlerine erişim gibi alanlarda 2015\'ten bu yana yavaşlayan ilerlemeyle birlikte önemli zorluklarla karşı karşıyadır. İklim krizinin şiddetlendirdiği, özellikle savunmasız nüfuslar arasında eşitsizlikler devam etmektedir. 2030 yılına kadar SKH 3 hedeflerine ulaşmak için, eşitsizlik ve çevresel faktörlerle mücadele de dahil olmak üzere bu zorlukların üstesinden gelmek için önemli yatırımlara ve odaklanmaya ihtiyaç vardır. Savunmasız grupları ve yüksek hastalık yükü olan bölgeleri korumak için acil önlemler alınması gerekmektedir.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Quality Education') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Quality Education'),
                content: const Text(
                  'SDG 4, diğer çoğu sdg\'nin önemli bir etkinleştiricisidir. Ne yazık ki, eğitimde küresel ilerleme yeterince hızlı olmamıştır. Dünya çapındaki öğrencilerin yalnızca% 58\'i, 2019\'da ilkokul sonunda okumada en az asgari yeterlilik seviyesine ulaştı. Ortaokulun sonunda ülkelerin büyük bir kısmı öğrenme çıktılarında geriye doğru ilerlemektedir. Lise tamamlama oranındaki iyileşme 2015\'ten bu yana yavaşladı. Sahra altı Afrika da dahil olmak üzere bazı bölgeler öğretmen kıtlığı, yüksek öğrenci-öğretmen oranları ve yetersiz eğitim ve öğretmenler için mesleki gelişim fırsatlarının eksikliği ile karşı karşıyadır. SDG 4\'e yönelik ilerlemenin hızlandırılması, genel 2030 Gündemine ulaşmada katalitik bir etkiye sahip olacağından önceliklendirilmelidir.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Gender Equality') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Gender Equality'),
                content: const Text(
                  'Toplumsal cinsiyet eşitliğine yönelik ilerleme açıkça yolunda gitmiyor. Çocuk evliliği ve kadın sünneti gibi zararlı uygulamalar azalıyor, ancak nüfus artışına ayak uyduracak kadar hızlı değil. Toplumsal cinsiyet eşitliği, özellikle kadınların kamusal hayata ve yönetimsel rollere katılımında uzak durmaktadır. Mevcut oranda, yönetim pozisyonlarında cinsiyet eşitliğine ulaşmak 176 yıl sürecektir. Birçok kadın hala cinsel ve üreme sağlıkları üzerinde kontrolden yoksundur ve kadına yönelik şiddet devam etmektedir. Önyargılı sosyal normlara meydan okumak, zararlı uygulamaları ortadan kaldırmak ve ayrımcı yasaları değiştirmek için acil eyleme ihtiyaç vardır. Kadınların liderlik rollerini ve toplumsal cinsiyet eşitliğine yönelik yatırımlarını artırmak ulusal, bölgesel ve küresel düzeyde çok önemlidir.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Clean Water and Sanitation') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Clean Water and Sanitation'),
                content: const Text(
                  'SDG 6 hedeflerinin hiçbiri yerine getirilme yolunda değil. 2022 itibariyle 2,2 milyar insanın güvenli bir şekilde yönetilen içme suyuna erişimi yoktu ve 3,5 milyarın güvenli bir şekilde yönetilen sanitasyona erişimi yoktu. 2002 ile 2021 yılları arasında kuraklık 1,4 milyardan fazla insanı etkiledi. 2022 itibariyle, dünya nüfusunun kabaca yarısı yılın en az bir bölümünde ciddi su kıtlığı yaşarken, dörtte biri ‘aşırı yüksek\' su stresi seviyeleriyle karşı karşıya kaldı. İklim değişikliği bu sorunları daha da kötüleştirerek sosyal istikrar için önemli riskler oluşturuyor. Sınır ötesi nehir ve göl havzaları dünya nüfusunun yaklaşık% 40\'ına ev sahipliği yaparken ve 153 ülke tarafından paylaşılırken, bu ülkelerin beşte birinden daha azı tüm sınır ötesi suları için işbirliği için operasyonel düzenlemelere sahiptir. Entegre su yönetimine ilişkin koordineli küresel eylem, iklim değişikliğinin su kaynakları üzerindeki etkilerini azaltmak için önemlidir.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Affordable and Clean Energy') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Affordable and Clean Energy'),
                content: const Text(
                  'Enerji erişimi, dünya genelinde hızla artarken, 2022 itibariyle yaklaşık 770 milyon insan hâlâ elektriğe erişimden yoksundu. Bu sayı, genellikle kırsal, uzak ve yoksul topluluklarda yoğunlaşmaktadır. Dünyadaki en yoksul %20\'lik kesim, 2030 yılına kadar sürdürülebilir enerji erişimi hedefine ulaşabilmek için özellikle kritik bir grup oluşturmaktadır. Küresel enerji geçişi, temiz enerji teknolojilerinin daha geniş çapta benimsenmesini içermeli ve fosil yakıtların aşamalı olarak ortadan kaldırılması gerekmektedir. Erişilebilir ve uygun maliyetli temiz enerji sağlamak için devletler ve şirketler arasında güçlü işbirliği gerekmektedir.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Decent Work and Economic Growth') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Decent Work and Economic Growth'),
                content: const Text(
                    'SDG 8e doğru ilerleme, COVID-19 sonrasındaki zorluklar, ticaret gerilimleri, gelişmekte olan ülkelerdeki artan borçlar, çatışmalar ve jeopolitik gerilimlerle karşı karşıya ve toplu olarak küresel ekonomik büyümeyi tehdit ediyor. İşgücü piyasaları esneklik gösterirken, eşit olmayan pandemi iyileşmesi, işçi haklarının korunmasının azalması ve ortaya çıkan kırılganlıklar sosyal adalet umutlarını aşındırıyor. Raporda, 2024te işsizliğin artması ve büyümenin yavaşlaması, gelir eşitsizliğinin artması ve kadınlar için adil ücretin ve gençler için insana yakışır çalışmanın tehlikeye girmesiyle işgücü piyasası görünümünün kötüleşmesi öngörülüyor. SKH 8e ulaşmak, sosyal adalete ve kapsayıcı istihdama odaklanarak ekonomik büyümeyi teşvik eden politikaları zorunlu kılmaktadır'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Industry, Innovation, and Infrastructure') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Industry, Innovation, and Infrastructure'),
                content: const Text(
                    ' Industry, Innovation, and Infrastructure butonu 2022den bu yana imalat sektörü, jeopolitik istikrarsızlık, enflasyon, lojistik zorluklar, artan enerji maliyetleri ve daha geniş bir küresel ekonomik yavaşlamaya bağlı durgunlukla karşı karşıya kaldı. Küresel olarak, üretimin istihdamdaki payı geriledi. Üretimde CO2 yoğunluğunun azaltılmasında ilerleme kaydedilirken, 2030 hedef değerlerinin gerisinde kalmaktadır. SKH 9a doğru ilerlemeyi hızlandırmak için çabalar, yeşil geçişi hızlandırmaya, sektörlere stratejik olarak öncelik vermeye ve dijital ve inovasyon sektörlerindeki eşitsizlikleri gidermeye öncelik vermelidir. '),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Reduced Inequalities') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Reduced Inequalities'),
                content: const Text(
                    'Nüfusun en yoksul% 40ının gelirleri genellikle birçok ülkede ulusal ortalamadan daha hızlı büyüdü ve pandemi sırasındaki mali transferler ortak refahı artırdı. Bununla birlikte, son beş yılda, en fakir ve en zengin ülkeler arasındaki kişi başına düşen gelir artışındaki boşluk genişledi. Ayrıca yaş, cinsiyet, din, ırk veya inanca dayalı ayrımcılık, küresel olarak her altı kişiden birini etkilemektedir. 2023 yılı 35,8 milyon mülteciyle rekor seviyeye ulaştı ve dünya çapında 8.000den fazla göçmen ölümü kaydedildi. Hem ülke içi hem de ülkeler arası eşitsizliğin ele alınması, adil kaynak dağıtımını, eğitime ve beceri geliştirmeye yatırımı, sosyal koruma önlemlerinin uygulanmasını, ayrımcılıkla mücadeleyi, marjinal grupları desteklemeyi ve adil ticaret ve finansal sistemler için uluslararası işbirliğini teşvik etmeyi gerektirir. '),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Sustainable Cities and Communities') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Sustainable Cities and Communities'),
                content: const Text(
                    'Dünya nüfusunun yarısından fazlası şu anda şehirlerde yaşıyor. Ancak şehirler, COVID-19un ardından küresel kentsel yoksulluk seviyelerinin yükselmesiyle daha da zorlaşan çok sayıda karmaşık sorunla boğuşuyor. Artan gecekondu nüfusundan, yetersiz toplu taşıma araçlarından, nüfus artışını geride bırakan şehir genişlemesinden kritik altyapıya yönelik tehditlere ve felaketler nedeniyle temel hizmetlerin aksamasına kadar, şehirlerin bu zorluklarla yeterince başa çıkabilecek donanıma sahip olması esastır. Dünya daha kentsel hale geldikçe, küresel nüfusun yaklaşık% 70inin 2050 yılına kadar şehirlerde ikamet etmesi öngörülürken, kritik altyapı, uygun fiyatlı konut, verimli ulaşım ve temel sosyal hizmetler, herkes için esnek ve sürdürülebilir şehirler yaratmak için çok önemlidir. '),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Responsible Consumption and Production') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Responsible Consumption and Production'),
                content: const Text(
                    'Dünya çapında sürdürülemez tüketim ve üretim kalıpları krizi, devam eden üçlü gezegensel iklim değişikliği, doğa kaybı ve kirlilik krizini körüklüyor. Yurt içi malzeme tüketimi ve malzeme ayak izi artmaya devam ediyor, dünyanın dört bir yanındaki evlerde her gün yaklaşık bir milyar öğün yenilebilir gıda israf ediliyor ve e-atık stoğu istikrarlı bir şekilde artıyor. Ülkeler çevre anlaşması yükümlülüklerini yerine getirirken ve çevresel bozulmayı ele almak için kapsamlı yaklaşımları benimserken, fosil yakıtların üretimini ve tüketimini destekleyen kamu finansmanı 2015ten bu yana üç kattan fazla artarak net sıfır emisyona geçişi engelledi. Üretimin veya üretimin her aşaması, kaynak ve fosil yakıt kullanımını azaltma, yeniliği teşvik etme, enerji tasarrufu yapma, emisyonları azaltma ve döngüsel bir ekonomi yaklaşımını savunma fırsatı sunar.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Climate Action') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Climate Action'),
                content: const Text(
                    '2023te iklim rekorları kırıldı ve dünya iklim krizinin gerçek zamanlı olarak ortaya çıkmasını izledi. Dünyanın dört bir yanındaki topluluklar, günlük olarak yaşamları ve geçim kaynaklarını yok eden aşırı havanın etkilerinden muzdariptir. Küresel sıcaklıktaki artışı 1,5 ° C ile sınırlayacak ve iklim kaosunun en kötüsünden kaçınacak yol haritası, küresel toplumun herhangi bir gecikmesini, kararsızlığını veya yarı önlemini karşılayamaz. Bu on yılda küresel sera gazı emisyonlarında ciddi düşüşler ve 2050 yılına kadar net sıfırın elde edilmesi için derhal harekete geçilmesini talep ediyor.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Life Below Water') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Life Below Water'),
                content: const Text(
                    'Okyanuslar, Dünya yüzeyinin% 70inden fazlasını kaplar ve 3 milyardan fazla insana yiyecek ve geçim sağlamanın yanı sıra iklim değişikliğinin etkileriyle mücadelede çok önemli bir rol oynar. Bununla birlikte, azalan balık stokları, deniz kirliliği, okyanus asitlenmesi ve habitat tahribatından kaynaklanan endişe verici eğilimler, deniz ekosistemlerini ve dünya çapındaki kıyı topluluklarının geçim kaynaklarını tehdit etmektedir. Sürdürülebilir balıkçılık uygulamaları, deniz koruma çabaları, kirliliğin azaltılması ve gelecek nesiller için deniz yaşamını ve ekosistemleri korumak için küresel işbirliği yoluyla bu zorlukların üstesinden gelmek ve okyanusun uzun vadeli sağlığını ve sürdürülebilirliğini sağlamak için acil eyleme ihtiyaç vardır. '),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Life on Land') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Life on Land'),
                content: const Text(
                    'SKH 15, insanlığın yaşam destek sistemi olarak biyolojik çeşitliliğin kritik öneminin altını çizmektedir. Bununla birlikte, ormanların amansız tükenmesi, endişe verici bir tür yok olma oranı ve kilit biyolojik çeşitlilik alanlarının korunmasındaki durgunluk ile birleştiğinde, ekosistemlerimizin hassas dengesini tehlikeye atıyor. İklim değişikliği, biyoçeşitlilik kaybı ve kirliliğin yanı sıra çölleşme, toprak ve toprak bozulması, kuraklık ve ormansızlaşma gibi acil küresel çevresel zorlukları ve krizleri ele almak için, küresel çevre ve biyoçeşitlilik taahhütlerimizi yerine getirme çabalarını yoğunlaştırmak zorunludur =.  '),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Peace and Justice Strong Institutions') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Peace and Justice Strong Institutions'),
                content: const Text(
                    'Dünyanın her yerinde, her anlamda barışa ihtiyacımız var. Ancak küresel barış ve güvenliğe giden yol daha da karmaşık hale geldi. Küresel zorla yerinden edilme, Mayıs 2023 itibariyle zulüm, çatışma, şiddet ve insan hakları ihlallerinden kaçmak zorunda kalan 110 milyonu aşarak tüm zamanların en yüksek seviyesinde. 2022 ile 2023 yılları arasında sivil kayıplar, 2030 Gündeminin kabul edilmesinden bu yana en yüksek artışı yaşadı. Dünya genelinde insan güvenliğine yönelik sürekli tehditler, sürdürülebilir kalkınma için çok önemli olan barışçıl ve kapsayıcı toplumların çöküşünün ve dünya çapında sayısız sesin umutsuz barış çağrılarına kulak vermek için güveni yeniden tesis etme, küresel barış ve güvenlik çerçevelerini güçlendirme ve yenileme ihtiyacının altını çiziyor.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          } else if (title == 'Partnerships for the Goals') {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Partnerships for the Goals'),
                content: const Text(
                    'Sürdürülebilir kalkınma için küresel ortaklıklar finans, teknoloji, ticaret ve veri gibi kilit alanları kapsar. Finansal kaynakların kalkınma için seferber edilmesinde, internet bağlantısının genişletilmesinde ve istatistiksel sistemlerin güçlendirilmesinde karışık eğilimler vardır. Bununla birlikte, gelişmekte olan ülkelerin SKHLERE ulaşması için yıllık 4 trilyon dolarlık önemli bir yatırım açığı, benzeri görülmemiş derecede yüksek dış borç seviyeleri ve düşük gelirli ülkelerde çevrimiçi bağlantıya sınırlı erişim gibi kalıcı ve sakatlayıcı konular, kötüleşen uluslararası işbirliği ortamında sürekli işbirliğine ve gelişmiş işbirliğine ve desteğe duyulan ihtiyacın altını çizmektedir. ve jeopolitik gerilimler.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: const TextStyle(fontSize: 16),
        ),
        child: Text(title),
      ),
    );
  }
}