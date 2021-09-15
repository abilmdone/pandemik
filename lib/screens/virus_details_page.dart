import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VirusDetailsScreen extends StatelessWidget {
  final imgPath;
  final Color color;

  static List<Map<String, String>> details = [
    {
      "detail": "Utangulizi",
      "desc":
          "Corona ni jamii kubwa ya virusi vinavyosababisha maradhi kwa wanyama na binadamu. " +
              "Kwa binadamu, jamii kadhaa za virusi vya Corona vinafahamika kusababisha " +
              " maambukizi kwenye njia ya hewa na mfumo wa upumuaji." +
              "Maradhi yaliyowahi kusababisha madhara makubwa kutokana na virusi vya Corona" +
              "ni pamoja na MERS na SARS yaliyozuka mwanzoni mwa miaka ya 2000." +
              "Kirusi cha Corona kilichogundulika hivi karibuni kinasababisha ugonjwa" +
              " unaofahamika kama COVID-19.",
    },
    {
      "detail": "Chanzo chake",
      "desc": "COVID-19 ni ugonjwa wa kuambukiza unaosababishwa na virusi vya Corona." +
          " Virusi hivyo vipya vilianza kusmbaa China mji wa Wuhan. Wataalamu" +
          " wa afya wanafikiri vinatokana na popo alafu vikasambaa kwa binadamu," +
          " labda na kupitia aina nyingine ya wanyama.",

    },
    {
      "detail": "Corona ni hatari kiasi gani?",
      "desc": "Ugonjwa wa Corona una dalili tofauti tofauti, ikiwemo homa, " +
          "kifua, pumzi kukatika na kushindwa kupumua vizuri.\n\nImefahamika " +
          " virusi vya Corona ni hatari sana. Kutokana na vifo vinavyoendelea kutokea" +
          " kuna wakati dlili zinajificha. Wengi wanaokutwa na dalili wanakufa  wasipopata" +
          " matibabu ya haraka hasa ukiwa na kinga za mwili dhaifu.",
    },
    {
      "detail": "Jinsi gani virusi vinasambaa?",
      "desc": "Watu wanaweza kupata Virusi vya Corona kutoka kwa watu walioambukizwa." +
          "Virusi vinaweza kusambaa kupitia maji maji kutoka kwenye pua au mdomo wa aliyeathirika" +
          " Iwapo mtu anagusa maji maji kama mafua\n\nmate na makohozi ya mtu aliye na " +
          " virusi na kisha kujigusa mdomo, macho na pua anaweza kupata virusi vya Corona.",
    },
    {
      "detail": "Kwa nini Upate Chanjo ya COVID-19?",
      "desc": "Virusi vipya vya korona husababisha maambukizi ya mfumo wa upumuaji." +
          " Kwa miaka mingi, watu kote ulimwenguni wametumia chanjo" +
          "kujikinga dhidi ya magonjwa hatari ya kuambukiza, kama vile surua, pepopunda na polio \n\nChanjo ya COVID-19 ndiyo njia bora zaidi ya kujikinga dhidi ya kuambukizwa COVID-19" +
          "  na pia kutusaidia ili kila mtu arudi kuendeleza maisha kama kawaida. " +
          "Chanjo ni njia kuu ya kuzuia kuenea kwa virusi hivi katika familia na jamii zetu," +
          "kando na kuvaa barakoa, kunawa mikono na kukaa angalau mita 2 mbali na wengine.",
    },
    {
      "detail": "Chanjo za COVID-19 ni salama.",
      "desc": "Watu wanakuwa na hofu kwa kuwa zimetengenezwa haraka." +
          "Hakuna hatua zilizorukwa wakati wa kutengeneza chanjo za COVID-19." +
          " Wanasayansi ulimwenguni kote wamefanyia utafiti teknolojia hii kwa zaidi ya mwongo mmoja." +
          " \n\nHii ndiyo sababu iliwezekana kutoa chanjo salama na yenye ufanisi kwa haraka sana.",

    },
    {
      "detail": "Chanjo za COVID-19 hazikuambukizi COVID-19",
      "desc": "Chanjo za COVID-19 hazina sehemu yoyote ya virusi, kwa hivyo haziwezi kukusababishia kupata COVID-19." +
          "Chanjo za COVID-19 zinakukinga kutokana na virusi. Unaweza kupata athari baada ya kupata chanjo" +
          " kama kile kidonda kwenye mkono au homa.\n\n. Hizi ni athari za kawaida na watu wengi huzipata. ",
    },
    {
      "detail": "Chanjo za COVID-19 zinaweza kukukinga dhidi ya aina zaidi ya moja ya virusi",
      "desc": "Virusi hubadilika, au hupata mabadiliko kidogo, baada ya muda." +
          "Data inaonyesha chanjo za COVID-19 zina ufanisi dhidi ya aina ambazo tumeona hadi sasa za virusi vinavyosababisha COVID-19. ",
    },
    {
      "detail": "Chanjo za COVID-19 hazibadilishi DNA yako",
      "desc": "Chanjo za COVID-19 ni chanjo za mRNA na haziingiliani na DNA yako kwa njia yoyote." +
          "Zinasababisha mwitikio wa kinga ambao huunda kingamwili ili kukukinga dhidi ya kuambukizwa na COVID-19.",
    },
    {
      "detail": "Chanjo za COVID-19 hazijahusishwa na utasa au kuharibika kwa mimba.",
      "desc": "COVID-19 haijasababisha utasa kwa wanawake ambao wamepata virusi, kwa hivyo hakuna sababu ya kufikiria chanjo yake inaweza kusababisha. Kulikuwa na baadhi ya maelezo yaliyoenezwa mtandaoni ambayo yalikuwa si ukweli; ." +
          "yaliyodai kuwa protini iliyo kwenye chanjo inashambulia protini kwenye kondo la nyuma. Hii sio kweli." +
          " . Idadi ndogo ya asidi za amino katika protini zote mbili haingeweza kusababisha athari hiyo. " +
          "Chanjo za COVID-19 hazijafanyiwa majaribio kwa wanawake wajawazito, lakini wanawake wajawazito hupata chanjo za magonjwa mengine wakati wa ujauzito." +
          " Wanawake wajawazito wana hatari kubwa ya kupata maradhi makali kutokana na COVID-19 na kuna uwezekano unaweza kumwambukiza mtoto wako COVID-19 baada ya kuzaliwa." +
          " Zungumza na daktari wako ili uone ikiwa unapaswa kupata chanjo.",
    },
    {
      "detail": "Chanjo za COVID-19 hazijumuishi chipu ndogo au vifaa vya ufuatiliaji.",
      "desc": "Habari potofu kwamba chanjo za COVID-19 zinajumuisha chipu ndogo au vifaa vya ufuatiliaji imethibitishwa kuwa ya uwongo.." +
          "Tunajua haswa kile kimejumuishwa katika kila chanjo. Orodha ya viungo katika kila chanjo inaweza kupatikana mtandaoni"
    },
    {
      "detail": "Watu wenye magonjwa au matatizo sugu wanapaswa kupata chanjo mara tu zamu yako ya kupata chanjo inapofika.",
      "desc": "Ikiwa una ugonjwa sugu, kama vile ugonjwa wa sukari, uko katika hatari kubwa ya kupata maradhi makali kutokana na COVID-19." +
          "Chanjo za COVID-19 ni salama na zenye ufanisi kwa watu walio na magonjwa au matatizo sugu."

    },


  ];

  static AutoSizeGroup titleGrp = AutoSizeGroup();
  static AutoSizeGroup descGrp = AutoSizeGroup();

  const VirusDetailsScreen({Key key, this.imgPath, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
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
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: pageHeight,
        child: Column(
          children: <Widget>[
            //image tag container
            Container(
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  color: color.withOpacity(0.2)),
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
                            "Elimu ya Chanjo",
                            style: TextStyle(
                              color: color,
                              fontFamily: "Montserrat",
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                            stepGranularity: 2,
                            maxFontSize: 30,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),

                    //Image
                    Positioned.fill(
                      right: -90,
                      bottom: -30,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: LayoutBuilder(
                          builder: (ctx, constraint) => Hero(
                              tag: imgPath,
                              child: Image(
                                image: AssetImage(imgPath),
                                height: constraint.maxHeight * 0.92,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Details List
            Container(
              height: pageHeight - 220,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: LayoutBuilder(
                      builder: (ctx, constraint) => LimitedBox(
                        maxWidth: constraint.maxWidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            AutoSizeText(
                              "${details[index]["detail"]}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: "Montserrat",
                                color: color,
                                fontWeight: FontWeight.w700,
                              ),
                              maxFontSize: 28,
                              stepGranularity: 2,
                              maxLines: 3,
                              group: titleGrp,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AutoSizeText(
                              "${details[index]['desc']}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                height: 1.5,
                                fontFamily: "Montserrat",
                                color: Colors.grey[850],
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w500,
                              ),
                              maxFontSize: 18,
                              group: descGrp,
                              stepGranularity: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
