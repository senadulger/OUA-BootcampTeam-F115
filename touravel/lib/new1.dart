import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class New1 extends StatelessWidget {
  const New1({super.key});

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
          "Özgürlük Heykeli",
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
                  image: const AssetImage("assets/images/ozgurlukheykeli.png"),
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
                    "Özgürlük Heykeli",
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
                "Özgürlük Heykeli, Amerika Birleşik Devletleri'nin sembollerinden biridir ve dünyaca ünlü bir anıt olarak kabul edilir. New York'ta, Özgürlük Adası'nda yer alan bu heykel, Amerikan bağımsızlığını ve özgürlük idealini temsil eder. Fransız heykeltıraş Frédéric Auguste Bartholdi tarafından tasarlanan ve Gustave Eiffel tarafından inşa edilen Özgürlük Heykeli, 1886 yılında açılmıştır. Özgürlük Heykeli, 93 metrelik yüksekliğiyle göz alıcı bir görüntüye sahiptir. Heykel, kadın bir figür olan Özgürlük Tanrıçası'nı temsil eder. Sağ elindeki meşaleyle aydınlık ve özgürlüğü simgelerken, sol elindeki kitapta Amerika'nın bağımsızlık tarihi yazılıdır. Heykel, gözetleme platformuna çıkmak isteyen ziyaretçilere geniş bir manzara sunar. New York'un siluetini, Hudson Nehri'nin güzelliğini ve Özgürlük Adası'nın çevresini keşfedebilirsiniz. Özgürlük Heykeli, Amerikan demokrasisinin ve özgürlüğünün sembolüdür. Ayrıca, tarihi önemi ve etkileyici sanatsal detaylarıyla ziyaretçileri etkiler. Heykel, milyonlarca insanın gözünde Amerikan rüyasını ve umudunu temsil eder. Özgürlük Heykeli'ni ziyaret etmek, Amerika'nın özgürlük ve demokrasi değerlerine bir saygı duruşu yapmak ve unutulmaz bir deneyim yaşamak için kaçırılmaması gereken bir fırsattır.",
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
