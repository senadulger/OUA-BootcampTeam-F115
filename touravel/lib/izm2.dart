import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Izm2 extends StatelessWidget {
  const Izm2({super.key});

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
          "Efes Antik Kenti",
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
                tag: "2",
                child: Image(
                  image: const AssetImage("assets/images/efesantikkenti.png"),
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
                    "Efes Antik Kenti",
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
                "Efes Antik Kenti, Türkiye'nin batısındaki İzmir ilinde yer alan eşsiz bir arkeolojik sit alanıdır. M.Ö. 6. yüzyılda kurulan bu antik kent, tarih boyunca önemli bir ticaret ve kültür merkezi olmuştur. Efes, Roma İmparatorluğu döneminde zirveye ulaşmış ve Anadolu'nun en büyük metropollerinden biri haline gelmiştir. Efes Antik Kenti, etkileyici yapıları, heykelleri ve tarihi atmosferiyle ziyaretçilerini büyüler. Artemis Tapınağı, antik dünyanın Yedi Harikası'ndan biri olarak kabul edilen büyüleyici bir yapıydı. Büyük Tiyatro, 25.000 kişilik oturma kapasitesiyle antik dönemin en etkileyici tiyatrolarından biridir. Celsius Kütüphanesi, antik dünyanın en büyük kütüphanelerinden biriydi ve muazzam bir mimari şaheser olarak günümüze ulaşmıştır. Ayrıca, Efes'in antik sütunlu caddesi olan Kuretler Caddesi, dönemin izlerini takip etmek ve antik şehri keşfetmek isteyen ziyaretçiler için bir yolculuk sunar. Efes Antik Kenti, tarihi ve kültürel bir hazinenin kapısını aralar. İçinde gezinirken, antik dönemdeki yaşamın izlerini takip ederken büyülenirsiniz. Efes'in geniş alanı, antik yapılar, sütunlar, mozaikler ve sokaklar arasında keşfedilecek birçok detay barındırır. Ayrıca, Efes Antik Kenti'nde yer alan Arkeoloji Müzesi, buluntuları sergileyerek ziyaretçilere daha derin bir anlayış sağlar. Efes Antik Kenti, Türkiye'nin en önemli arkeolojik sit alanlarından biridir ve tarih ve kültür meraklıları için vazgeçilmez bir destinasyondur.",
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
