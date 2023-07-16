import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ist4 extends StatelessWidget {
  const Ist4({super.key});

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
          "Yerebatan Sarnıcı",
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
                tag: "4",
                child: Image(
                  image: const AssetImage("assets/images/yerebatansarnici.png"),
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
                    "Yerebatan Sarnıcı",
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
                "Yerebatan Sarnıcı, İstanbul'un tarihi yarımadasında bulunan muhteşem bir su sarnıcıdır. İnşa edildiği dönemde şehrin su ihtiyacını karşılamak için kullanılan bu yapı, Roma dönemine ait bir mühendislik harikasıdır. Sarnıç, büyüleyici bir atmosfer sunan sütunlar ve yansımalı suyla ünlüdür. Yerebatan Sarnıcı'na adım attığınızda, yeraltındaki bu gizemli yapıda bir yolculuğa çıkarsınız ve tarihî bir mirasın içinde kaybolursunuz. Sarnıcın büyüleyici görüntüleri, ziyaretçilere İstanbul'un antik geçmişine dair bir anlayış sunar. Yerebatan Sarnıcı, İstanbul'un en önemli turistik mekanlarından biri olarak kabul edilir. Ziyaretçiler, sarnıcın büyüleyici atmosferinde dolaşırken, 336 adet sütunun arasında kaybolmanın ve suyun yansımalarının etkileyici bir deneyimini yaşarlar. Ayrıca, sarnıcın içinde sergilenen bazalt sütunların çeşitli süslemeleri, mimari zenginlikler ve tarihi detaylar da ziyaretçilerin ilgisini çeker. Yerebatan Sarnıcı, İstanbul'un zengin tarihini keşfetmek ve benzersiz bir atmosferin içinde yolculuk yapmak isteyen herkese unutulmaz bir deneyim sunar.",
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
