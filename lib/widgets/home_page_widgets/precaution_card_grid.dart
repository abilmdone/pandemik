import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PrecautionCardGrid extends StatefulWidget {
  @override
  _PrecautionCardGridState createState() => _PrecautionCardGridState();
}

class _PrecautionCardGridState extends State<PrecautionCardGrid> {
  int selectedIndex=0;
  final List<Map<String, String>> preventions = const [
    {
      "prevention": "Vaa Barakoa",
      "desc":
      "Kumbuka kuvaa barakoa kila unapotoka nje au unapokuwa kwenye mkusanyiko.",
      "imgPath": "assets/prevention/mask.png",
    },
    {
      "prevention": "Osha Mikono",
      "desc": "Osha mikono yako mara kwa mara kwa kutumia sabuni a maji tiririka angalau kwa sekunde 20.",
      "imgPath": "assets/prevention/wash.png",
    },
    {
      "prevention": "Jifunike unapo Kohoa",
      "desc": "Jifunike unapotaka kukohoa au kupiga chafya kwenye kiwiko chako au kufunika mdomo wako na leso inayoweza kutolewa.",
      "imgPath": "assets/prevention/coughCover.png",
    },
    {
      "prevention": "Tumia vitakasa mikono",
      "desc": "Tumia vitakasa mikono mara kwa mara ikiwa maji na sabuni havipo.",
      "imgPath": "assets/prevention/sanitizer.png",
    },
    {
      "prevention": "Usijishike Uso",
      "desc": "usijishike macho, pua au mdomo ikiwa haujaosha mikono yako.",
      "imgPath": "assets/prevention/touch.png",
    },
    {
      "prevention": "Epuka Mikusanyiko",
      "desc":
      "Kaa umbali wa angalau mita 2 baina ya mtu na mtu. Kaa nyumbani na epuka mikusanyiko.",
      "imgPath": "assets/prevention/socialDistance.png",
    },
  ];

  static AutoSizeGroup titleGrp=AutoSizeGroup();
  static AutoSizeGroup descGrp=AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        padding:
        const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 15.0,
          crossAxisCount: 2,
          childAspectRatio: 0.70,
        ),
        scrollDirection: Axis.vertical,
        itemCount: preventions.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 5,
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 650),
                decoration: BoxDecoration(
                  color: index==selectedIndex? Colors.teal[50]:Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
                child: LayoutBuilder(
                  builder: (ctx, constraint) => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image(
                        image: AssetImage(preventions[index]["imgPath"]),
                        height: constraint.maxHeight * 0.46,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      LimitedBox(
                        maxHeight: constraint.maxHeight * 0.1,
                        child: AutoSizeText(
                          "${preventions[index]["prevention"]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          maxFontSize: 20,
                          maxLines: 2,
                          minFontSize: 9,
                          stepGranularity: 1,
                          group: titleGrp,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      LimitedBox(
                        maxHeight: constraint.maxHeight*0.30,
                        child: AutoSizeText(
                          "${preventions[index]['desc']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                          maxFontSize: 20,
                          minFontSize: 9,
                          group: descGrp,
                          stepGranularity: 1,
                          maxLines: 10,
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
