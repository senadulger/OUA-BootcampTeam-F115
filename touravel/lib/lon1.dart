import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Lon1 extends StatelessWidget {
  const Lon1({super.key});

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
          "Big Ben",
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
                tag: "1",
                child: Image(
                  image: const AssetImage("assets/images/bigben.png"),
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
                    "Big Ben",
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
                "Big Ben, Londra'nın simgesel yapılarından biridir. Aslında Big Ben terimi, Büyük Britanya Parlamentosu'ndaki saat kulesinde bulunan ve ünlü saat çanını ifade eder. Ancak, halk arasında, hem saat çanını hem de saat kulesini kapsayan genel bir ifade olarak kullanılır. Big Ben, Victoria Dönemi'nde inşa edilmiş olup, zamansız bir simge haline gelmiştir. Kule, Parlamento Binası'nın yanında Thames Nehri kıyısında yükselir ve Londra'nın siluetinde göz alıcı bir noktada yer alır. Gotik tarzı ve 96 metrelik yüksekliğiyle dikkat çeken Big Ben, İngiltere'nin tarihine tanıklık etmiş ve birçok önemli anıta ev sahipliği yapmıştır. Big Ben, ziyaretçilerine eşsiz bir deneyim sunar. Kuleye tırmandığınızda, muhteşem bir panoramik manzarayı keşfedebilir ve Londra'nın büyüleyici sokaklarını, parklarını ve tarihi yapılarını görebilirsiniz. Ayrıca, Big Ben'in her saat başı çaldığı melodiyi duymak, Londra'nın enerjisini ve hareketliliğini hissetmek için bir fırsattır. Big Ben, İngiltere'nin kültürel mirasının önemli bir parçasıdır ve Londra'yı ziyaret edenler için kaçırılmaması gereken bir duraktır.",
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
