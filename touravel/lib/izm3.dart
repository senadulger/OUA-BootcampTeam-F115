import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Izm3 extends StatelessWidget {
  const Izm3({super.key});

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
          "Kemeraltı Çarşısı",
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
                  image: const AssetImage("assets/images/kemeralticarsisi.png"),
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
                    "Kemeraltı Çarşısı",
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
                "Kemeraltı Çarşısı, Türkiye'nin İzmir şehrinde bulunan tarihi ve canlı bir çarşıdır. Bu büyüleyici çarşı, İzmir'in kalbinde yer alır ve zengin bir tarihe sahiptir. Kemeraltı, Osmanlı döneminden günümüze uzanan geçmişiyle ticaretin ve kültürün merkezi olmuştur. Kemeraltı Çarşısı, renkli dükkanları, sokak satıcıları ve canlı atmosferiyle ziyaretçilere benzersiz bir alışveriş deneyimi sunar. Çarşının dar sokakları, geleneksel el sanatlarından yerel lezzetlere, giyimden antikalara kadar geniş bir ürün yelpazesine ev sahipliği yapar. İzmir'in meşhur tulum peyniri, zeytinyağı sabunları, deri ürünleri ve el yapımı takılar gibi özel hediyelik eşyalar da çarşıda bulunabilir. Ayrıca, çarşıda bulunan çay bahçeleri ve restoranlar, yorgunluk atmak ve lezzetli bir mola vermek için ideal mekanlardır.    Kemeraltı Çarşısı, sadece alışveriş için değil, aynı zamanda İzmir'in tarihini ve kültürel mirasını keşfetmek için de önemli bir noktadır. Çarşı içinde yer alan tarihi yapılar, camiler ve hanlar, ziyaretçilere Osmanlı dönemine ait bir atmosfer sunar. Ayrıca, çarşının yakınında bulunan Kızlarağası Hanı, tarihi bir mekan olarak dikkat çeker ve İzmir'in kültürel etkinliklerine ev sahipliği yapar. Kemeraltı Çarşısı, İzmir'in canlı ve renkli atmosferini deneyimlemek isteyen herkes için keşfedilmeye değer bir yerdir.",
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
