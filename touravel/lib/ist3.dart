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
          "Galata Kulesi",
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
                  image: const AssetImage("assets/images/galatakulesi.png"),
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
                    "Galata Kulesi",
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
                "Galata Kulesi, İstanbul'un tarihi semtlerinden biri olan Galata'nın gözde simgelerinden biridir. Bu etkileyici kule, 14. yüzyılda inşa edilmiş olup, İstanbul'un farklı dönemlerinde farklı amaçlar için kullanılmıştır. İstanbul Boğazı ve Haliç'in muhteşem manzaralarına hakim bir noktada yer almasıyla dikkat çeken Galata Kulesi, ziyaretçilerine unutulmaz bir panoramik deneyim sunar. Kuleye çıkarak İstanbul'un büyüleyici siluetini seyredebilir ve tarihi yarımadanın eşsiz güzelliklerini keşfedebilirsiniz. Galata Kulesi, aynı zamanda İstanbul'un tarihi ve kültürel önemini yansıtan bir nokta olarak da bilinir. Kule, Osmanlı İmparatorluğu döneminde deniz feneri ve gözetleme kulesi olarak kullanılmıştır. Günümüzde ise kule, İstanbul'un simgesel bir simgesi olmuştur ve ziyaretçilere hem tarihî bir mekanı hem de nefes kesen bir manzara sunmaktadır. Galata Kulesi, İstanbul'u ziyaret edenler için görülmesi gereken önemli bir noktadır ve şehrin büyüleyici atmosferini deneyimlemek için ideal bir duraktır.",
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
