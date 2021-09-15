import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pandemiki/models/item_color_data.dart';
import 'home_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: <Widget>[
            _buildHeader(),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Image.asset("assets/images/virusi.png"),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .25,
              right: 25,
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("assets/images/person.png"),
              ),
            ),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(bottom:20.0, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "UGONJWA WA UVICO (PANDEMIK)",
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 0.4,
                  height: 1.6,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

              ),
              Text(
                "Kwenye maisha tusiwe watu wa kuogopa na kukwepa, \n Tuwe ni watu wa kupokea Elimu kutoka kwa wataalamu kuchukua tahadhari.",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.4,
                  height: 1.6,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height:45),
            ],
          ),
        ),
      ),
    );
  }
}
