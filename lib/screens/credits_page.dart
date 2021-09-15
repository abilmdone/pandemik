import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CreditsScreen extends StatelessWidget {
  final PageController controller;

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  const CreditsScreen({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF4A148C),
            size: 26,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Kutoka Wizara ya Afya(MOH)',
            style: TextStyle(
              color: Colors.purple[900],
              fontFamily: "Montserrat",
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          maxLines: 1,
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('Jisajili kupata chanjo ya Uvico-19',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 0.4,
                    height: 1.6,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xff008e7b),
                  ),
                  textAlign: TextAlign.start,),
                subtitle: Text('Wizara ya Afya',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 0.4,
                    height: 1.6,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.normal,
                    color: Color(0xff5bc8b7),
                  ),
                  textAlign: TextAlign.start,),
                trailing: Icon(Icons.new_releases, color: Colors.red),
                onTap: () {
                  _launchURL('https://chanjocovid.moh.go.tz');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Fanya booking kupima Uviko-19',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 0.4,
                    height: 1.6,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xff008e7b),
                  ),
                  textAlign: TextAlign.start,),
                subtitle: Text('Wizara ya Afya',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 0.4,
                    height: 1.6,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.normal,
                    color: Color(0xff5bc8b7),
                  ),
                  textAlign: TextAlign.start,),
                trailing: Icon(Icons.new_releases, color: Colors.red),
                onTap: () {
                  _launchURL('https://pimacovid.moh.go.tz/#/booking');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Mwenendo wa Corona nchini Tanzania',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 0.4,
                    height: 1.6,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xff008e7b),
                  ),
                  textAlign: TextAlign.start,),
                subtitle: Text('Wizara ya Afya',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 0.4,
                    height: 1.6,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.normal,
                    color: Color(0xff5bc8b7),
                  ),
                  textAlign: TextAlign.start,),
                trailing: Icon(Icons.new_releases, color: Colors.red),
                onTap: () {
                  _launchURL('https://www.moh.go.tz/en/covid-19-info');
                },
              ),
            ),


          ],
        ),
      ),


    );
  }
  setState(Null Function() param0) {}
}
