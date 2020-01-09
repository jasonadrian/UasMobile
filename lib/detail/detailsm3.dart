import 'package:flutter/material.dart';



class Detailsm3 extends StatelessWidget {

static const String routeName = '/Detailsm3';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/sm3.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Sea Circus Kafe Seminyak',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ); 

Widget textSection = Container(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        'Alamat:   Jl. Kayu Aya No.22, Seminyak Bali 80361.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    ); 
    
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
          'Kafe di Seminyak Sea Circus, sebuah restoran dengan tema yang sangat unik. Menawarkan interior yang keren serta dipadu dengan keindahan dekorasi. Tidak hanya interior tempat makan, interior kamar mandi juga sangat cantik. Oleh karena itu, bagi anda yang suka nongkrong sambil foto-foto dan upload ke Instagram, Sea Circus Kafe Seminyak wajib anda kunjungi. Rasa smoothie mango tango benar-benar enak, seharga Rp 40,000 dan granny smith jus juga segar, seharga Rp 35,000..',
          textAlign: TextAlign.justify,
        )
    );

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('Our Score'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(
          Icons.timer,
          "Open", 
          "07.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "00.00"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "brfast,lnch,dinner"
          ),
      ],
    ); 

     return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
     
          title: Text(
            'Culinary Guide - Bali',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            textSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text, 
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}
