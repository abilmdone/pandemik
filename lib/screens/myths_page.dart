import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class MythsScreen extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );

  final imgPath;

  final Color color;

  List<Map<String, String>> myths = [
    {
      "myth": "Uvico haiwezi kusambazwa na mbu.",
      "desc": "Ni virusi vya hatari ambavyo huenea " +
          "kwa njia ya unyevu kutoka kwa mgonjwa kukohowa au kupiga chafya," +
          " mate au makamasi kutoka puani.",
      "imgPath": "assets/myths/mosquito.png",
    },
    {
      "myth":
          "Virusi vya Uvico haviwezi kusambaa katika maeneo yenye hali ya hewa ya joto na unyevu",
      "desc":
          "Hakuna sababu yoyote ya kuamini kwamba hali ya joto inaweza kuuwa virusi vya Uvico" +
              " au ugonjwa wowote. Inaweza kusambazwa katika hali yoyote ya hewa.",
      "imgPath": "assets/myths/hot.png",
    },
    {
      "myth": "Vitunguu swaumu haviwezi kuzuia maambukizi ya virusi vya Uvico.",
      "desc": "Vitunguu swaumu vinaweza kuwa na virutubisho vingi." +
          " Hivyo basi, hakuna ushahidi wa kitaalamu unaothibitisha kwa vitunguu swaumu" +
          " vinaweza kukulinda dhidi ya virusi vya Uvico.",
      "imgPath": "assets/myths/garlic.png",
    },
    {
      "myth": "Antibiotics hazifanyi kazi dhidi ya virusi, bali ni kwa bacteria",
      "desc": "Virusi vipya vya Uvico ni virusi na, pia, " +
          "antibiotics zisitumike kama njia ya kujikinga au kujitibu.",
      "imgPath": "assets/myths/antibiotics.png",
    },
    {
      "myth": "Mizigo kutoka China haiwezi kueneza virusi vya Uvico",
      "desc":
          "Wanasanyansi wanaamini virusi vya Uvico haviwezi kuishi kwenye barua au mizigo" +
              " kwa muda fulani. Kunakuwa " +
              "na hatari ndogo ya kusambaa kutoka kwenye bidhaa au mizigo",
      "imgPath": "assets/myths/package.png",
    },
    {
      "myth": "Paka na Mbwa hawawezi kusambaza virusi vya Uvico",
      "desc":
          "Mpaka sasa, kuna ushahidi mdogo sana unaosema Corona inaweza ambukizwa kwa" +
              " Paka na Mbwa. Wanasayansi wanaendelea na uchunguzi" +
              " katika umuhimu wa kesi hii kuzuka.",
      "imgPath": "assets/myths/dogs.png",
    },
    {
      "myth": "Watu wa umri wote wanaweza pata Uvico",
      "desc": "Inaweza kuwaathiri watu warika zote, wakiwemo watoto." +
          " Hata hivyo, vijana na wazee hasa wale wenye matatizo ya ki afya" +
          " wapo katika hatari zaidi ya maambukizi.",
      "imgPath": "assets/myths/ages.png",
    },
  ];

  MythsScreen({Key key, this.imgPath, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
              color: color,
              size: 28,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          //Cover Image Container
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
              color: color.withOpacity(0.2),
            ),
            width: MediaQuery.of(context).size.width,
            child: LayoutBuilder(
              builder: (ctx, constraint) => Stack(
                children: <Widget>[
                  //Title
                  Positioned(
                    top: constraint.maxHeight * 0.45,
                    left: 20,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: constraint.maxWidth * 0.55,
                        child: AutoSizeText(
                          "Nadharia kuhusu Uvico",
                          style: TextStyle(
                            color: color,
                            fontFamily: "Montserrat",
                            fontSize: 31,
                            fontWeight: FontWeight.w700,
                          ),
                          stepGranularity: 1,
                          maxFontSize: 31,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),

                  //Image
                  Positioned.fill(
                    bottom: -17.0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: LayoutBuilder(
                          builder: (ctx, constraint) => Hero(
                            tag: imgPath,
                            child: Image(
                              image: AssetImage(imgPath),
                              height: constraint.maxHeight * 0.93,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Myth card
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 15),
              width: MediaQuery.of(context).size.width > 360.0
                  ? MediaQuery.of(context).size.width - 31.0
                  : MediaQuery.of(context).size.width,
              child: Material(
                borderRadius: BorderRadius.circular(15.0),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    //Details
                    Flexible(
                      fit: FlexFit.loose,
                      child: PageView.builder(
                          controller: controller,
                          physics: BouncingScrollPhysics(),
                          itemCount: myths.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.fromLTRB(23, 35, 23, 15),
                              child: LayoutBuilder(
                                builder: (ctx, constraint) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    LimitedBox(
                                      maxHeight: constraint.maxHeight*0.27,
                                      child: Image(
                                        image: AssetImage(
                                            "${myths[index]["imgPath"]}"),
                                        height: 100.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: constraint.maxHeight*0.11,
                                    ),
                                    LimitedBox(
                                      maxHeight: constraint.maxHeight*0.17,
                                      child: AutoSizeText(
                                        "${myths[index]["myth"]}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 19,
                                          height: 1.1,
                                          fontFamily: "Montserrat",
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        maxFontSize: 20,
                                        stepGranularity: 2,
                                        maxLines: 8,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    LimitedBox(
                                      maxHeight: constraint.maxHeight*0.45,
                                      child: AutoSizeText(
                                        "${myths[index]['desc']}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16.5,
                                          height: 1.4,
                                          fontFamily: "Montserrat",
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        maxFontSize: 16.5,
                                        stepGranularity: 1.5,
                                        maxLines: 6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),

                    //Dot Indicator
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: myths.length,
                        effect: WormEffect(
                            dotHeight: 11,
                            dotWidth: 11,
                            spacing: 12.0,
                            strokeWidth: 1.2,
                            dotColor: Colors.grey[400],
                            paintStyle: PaintingStyle.stroke,
                            activeDotColor: Colors.redAccent[700]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
