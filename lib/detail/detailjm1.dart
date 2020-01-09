import 'package:flutter/material.dart';


class Detailjm1 extends StatelessWidget {

static const String routeName = '/Detailjm1';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/jm1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Menega Cafe',
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
        'Alamat: Jl. Four Seasons Muaya Beach, Jimbaran,Kuta Sel. Bali.',
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
          'Salah satu restoran di jimbaran Bali yang sangat di rekomendasikan adalah Menega Cafe yang menyajikan menu seafood. Cafe yang berada di Jl. Four season Resort Muaya Beach, Jimbaran, Bali ini menawarkan suasana yang tak jauh berbeda dengan tempat makan seafood di jimbaran lainnya. Menega cafe menyajikan masakan yang di olah dengan cara di bakar / grilled. Penampilan restoran hampir sama dengan restoran lainnya dengan puluhan kursi dan meja yang tertata rapi di pinggir pantai, di lengkapi dengan dekorasi candle light serta lampion sebagai penerangannya. Cafe Menega sangat ramai di kunjungi dan sangat cocok untuk anda bersama pasangan ataupun keluarga menikmati suasana pantai, tak hanya cocok untuk dinner di waktu cuaca sedang cerah anda bisa menyaksikan hidangan grilled sambil menikmati keindahan sunset di tepi pantai. Biasanya cafe menega melayani pengunjung setiap hari dari siang hingga menjelang malam pukul 11 malam.',
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
          "11.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "23.00"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "lnch,dinner"
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
