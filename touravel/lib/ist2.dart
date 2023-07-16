import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ist2 extends StatelessWidget {
  const Ist2({super.key});

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
          "Beylerbeyi Sarayı",
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
                  image: const AssetImage("assets/images/beylerbeyisarayi.png"),
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
                    "Beylerbeyi Sarayı",
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
                "Beylerbeyi Sarayı, İstanbul Üsküdar'da bulunan tarihi bir saraydır. Osmanlı İmparatorluğu'nun son dönemlerinde inşa edilen bu görkemli yapı, muhteşem bir mimariye sahiptir. İç mekanlarındaki zengin süslemeler, zarif mobilyalar ve göz alıcı detaylar, ziyaretçileri büyüler. Ayrıca, sarayın bahçesinde dolaşırken çeşmelerin su sesi eşliğinde Boğaziçi'nin nefes kesen manzarasının keyfini çıkarabilirsiniz. Beylerbeyi Sarayı, İstanbul'un tarihi ve kültürel mirasına ışık tutan önemli bir duraktır ve ziyaretçilere Osmanlı İmparatorluğu'nun görkemli geçmişine dair benzersiz bir deneyim sunar. Bugün Beylerbeyi Sarayı, müze olarak halka açıktır ve ziyaretçilere tarihi bir yolculuk fırsatı sunar. Sarayın içinde gezebilir, padişahların yaşadığı odaları keşfedebilir ve o döneme ait lüks ve ihtişamı yakından görebilirsiniz. Ayrıca, sarayın bahçesi sakin bir atmosfer sunar ve Boğaziçi'nin büyüleyici manzarasıyla rahatlayabilirsiniz. Beylerbeyi Sarayı, İstanbul'un görülmesi gereken önemli yerlerinden biridir ve ziyaretçilere unutulmaz bir deneyim sunar.",
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
