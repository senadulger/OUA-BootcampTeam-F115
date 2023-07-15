import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ist3 extends StatelessWidget {
  const Ist3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffffffff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Kız Kulesi",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xff000000),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff212435),
            size: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Hero(
                tag: "3",
                child: Image(
                  image: const AssetImage("assets/images/kizkulesi.png"),
                  height:
                      MediaQuery.of(context).size.height * 0.35000000000000003,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Kız Kulesi",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 5,
                    unratedColor: const Color(0xff9e9e9e),
                    itemBuilder: (context, index) =>
                        const Icon(Icons.star, color: Color(0xffffc107)),
                    itemCount: 5,
                    itemSize: 16,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    onRatingUpdate: (value) {},
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                "Kız Kulesi, İstanbul Boğazı'nın Marmara Denizi'ne yakın kısmında, Salacak açıklarında yer alan küçük adacık üzerinde inşa edilmiş yapıdır. “Deniz içinde karadan bir ok atımı uzak, dört köşe, sanatkârane yapılmış bir yüksek kuledir. Yüksekliği tam seksen arşındır. Sathı mesahası iki yüz adımdır. İki taraftan yerde kapısı vardır.” Evliya Çelebi, seyahatnamesinde bu şekilde tarif eder Boğaz’ın incisi Kız Kulesi’ni… Antik Çağ’da “Arcla” yani küçük kale ve “Damialis” yani dana yavrusu adları ile anılan kule, bir dönem Leandros’un Kulesi anlamına gelen “Tour de Leandros” ismi ile ün yapar. Hakkında çeşitli rivayetler anlatılan, efsanelere konu olan kulenin bilinen tarihi, milattan önce 411 yıllarına kadar uzanır. Kız Kulesi hakkında en bilinen hikâye, Kleopatra’nın sonuna benzer bir sonun anlatıldığı yılan hikâyesidir. Kehanete göre; Krala çok sevdiği kızının onsekiz yaşına geldiğinde bir yılan tarafından sokularak öleceği söylenir. Kral bu kehanet üzerine, denizin ortasında bir kule yaptırır ve prensesi buraya yerleştirir. Ancak kuleye gönderilen üzüm sepetinden çıkan bir yılan, prensesinin ölümüne neden olur. Kral, kızına demirden bir tabut yaptırarak Ayasofya’nın giriş kapısının üstüne yerleştirir. Yılanın, ölümünden sonra da prensesi rahat bırakmadığına dair söylentiler günümüze kadar ulaşmıştır. Zira bu tabutun üstünde iki delik olduğu hala anlatılır. İstanbul Boğazı’nın girişindeki kayalık üzerine kurulmuş olan bu küçük kule, tarihsel süreçte gümrük istasyonu, gözetleme kulesi, deniz feneri olarak kullanılır. Kulenin bugünkü temelleri ve alt katın önemli kısımları Fatih Sultan Mehmet zamanında yapılmıştır. Boğaz’da salınan sandalları, vapurları ve gemileri günün her saatinde selamlayan Kız Kulesi, 1998 yılında başlayan restorasyon çalışmalarının ardından 2000 yılında turizme açıldı. Ulaşımın Salacak ve Ortaköy’den sandallarla yapıldığı Kız Kulesi, bugün İstanbul’un en önemli sembollerinden biri olarak ziyaretçilerini ağırlamaya devam ediyor.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
