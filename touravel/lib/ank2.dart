import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ank2 extends StatelessWidget {
  const Ank2({super.key});

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
          "Atakule",
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
                  image: const AssetImage("assets/images/atakule.png"),
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
                    "Atakule",
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
                "Atakule, Ankara'nın ikonik sembollerinden biri olan yüksek bir gözlem kulesidir. Başkentin Çankaya ilçesinde yer alan bu gökdelen, 1989 yılında inşa edilmiştir. Atakule, 125 metrelik yüksekliğiyle Ankara'nın siluetini süsleyen bir noktada yer alır ve muhteşem bir panoramik manzara sunar. Atakule'ye çıktığınızda, Ankara'nın muhteşem manzarasını keşfedebilirsiniz. Kule, başkentin tarihi ve modern bölgelerini kuşbakışı gözlemleme imkanı sunar. Ayrıca, kuledeki restoranlar ve kafe alanları, ziyaretçilere keyifli bir mola imkanı sağlar. Atakule aynı zamanda alışveriş merkezi ve etkinlik mekanlarına da ev sahipliği yapar. Ankara'ya özgü hediyelik eşyaları bulabileceğiniz mağazaları gezerek, Anadolu'nun zengin kültürel mirasını keşfedebilirsiniz. Atakule, Ankara'ya gelen yerli ve yabancı turistler için vazgeçilmez bir duraktır ve başkentin güzelliklerini keşfetmek için mükemmel bir noktadır.",
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
