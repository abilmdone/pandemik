import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SymptomCardGrid extends StatefulWidget {
  @override
  _SymptomCardGridState createState() => _SymptomCardGridState();
}

class _SymptomCardGridState extends State<SymptomCardGrid> {
  int selectedIndex=0;
  final List<Map<String, String>> symptoms = const [
    {
      "symptom": "Homa",
      "desc":
      "Joto la mwili kupanda zaidi ya kawaida.\nkawaida ni 98.6°F (37°C)",
      "imgPath": "assets/symptoms/high_fever.png",
    },
    {
      "symptom": "Kikohozi",
      "desc":
      "Koo kuuma ukikohoa, kavu au kuhisi kukwaruzwa.",
      "imgPath": "assets/symptoms/sore_throat.png",
    },
    {
      "symptom": "Koo Kukauka",
      "desc": "Kikohozi ambacho hakileti kamasi.",
      "imgPath": "assets/symptoms/cough.png",
    },
    {
      "symptom": "Uchovu",
      "desc":
      "Kuishiwa na nguvu, na kujihisi kuchoka muda wote.",
      "imgPath": "assets/symptoms/headache.png",
    },
    {
      "symptom": "Kutokwa na Makamasi",
      "desc": "Makamasi kukauka au kuchuruzika puani.",
      "imgPath": "assets/symptoms/high_fever.png",
    },
    {
      "symptom": "Kupumua kwa shida",
      "desc":
      "Unahisi kupumua na pumzi kwa shida na kupata maumivu makali kifuani",
      "imgPath": "assets/symptoms/sore_throat.png",
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
        itemCount: symptoms.length,
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
                  color: selectedIndex==index? Colors.teal[50]:Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.fromLTRB(14, 20, 14, 0),
                child: LayoutBuilder(
                  builder: (ctx, constraint) => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image(
                        image: AssetImage(symptoms[index]["imgPath"]),
                        height: constraint.maxHeight * 0.46,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      LimitedBox(
                        maxHeight: constraint.maxHeight * 0.1,
                        child: AutoSizeText(
                          "${symptoms[index]["symptom"]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          maxFontSize: 16,
                          maxLines: 1,
                          minFontSize: 11,
                          stepGranularity: 1,
                          group: titleGrp,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      LimitedBox(
                        maxHeight: constraint.maxHeight*0.30,
                        child: AutoSizeText(
                          "${symptoms[index]['desc']}",
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
                          maxLines: 4,
                        ),
                      ),
                      SizedBox(height: 4),
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
