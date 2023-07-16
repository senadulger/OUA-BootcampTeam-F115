import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ank3 extends StatelessWidget {
  const Ank3({super.key});

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
          "Kuğulu Park",
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
                  image: const AssetImage("assets/images/kugulupark.png"),
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
                    "Kuğulu Park",
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
                "Kuğulu Park, Ankara'nın gözde rekreasyon alanlarından biridir ve şehrin kalbinde yer alır. Adını parkta yaşayan zarif kuğulardan alan bu park, doğal güzelliği ve huzur veren atmosferiyle yerli ve yabancı ziyaretçilerin ilgisini çeker. Parkın göletinde yüzen kuğular, ziyaretçilere romantik bir manzara sunar. Kuğulu Park, yeşil alanları ve ağaçlık alanlarıyla şehrin stresinden uzaklaşmak ve doğanın tadını çıkarmak için mükemmel bir mekandır. Parkın içinde yürüyüş yapabilir, piknik yapabilir ve rahatlatıcı bir atmosferde dinlenebilirsiniz. Ayrıca, parkın yakınında bulunan kafeler ve restoranlar, ziyaretçilere lezzetli atıştırmalıklar sunar. Kuğulu Park, Ankara'nın canlılığından uzaklaşmak ve huzurlu bir ortamda vakit geçirmek isteyen herkes için popüler bir destinasyondur.",
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
