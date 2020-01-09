import 'package:flutter/material.dart';


class Detailnd2 extends StatelessWidget {

static const String routeName = '/Detailnd2';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/nd2.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Bebek Bengil',
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
        'Alamat: ITDC Complex, Nusa Dua Beach, Benoa, Bali ',
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
          'Jika Anda ingin makan bebek renyah, maka Bebek Bengil akan menjadi tempat makan favorit Anda. Bebek Bengil juga terkenal dengan Bebek Betutu atau bebek asapnya. Ini juga merupakan salah satu hidangan tradisional Bali yang terkenal. Ketika datang ke restoran bebek, Bebek Bengil adalah yang terbaik di pulau ini. Bebek Bengil adalah nama Indonesia dari Dirty Duck. Meskipun namanya memiliki kata ‘bengil’ di atasnya, semua yang akan Anda lihat dan makan di Restoran Bebek Bengil sangat higienis. Menu di restoran ini hampir semuanya terkait dengan bebek. Misalnya bebek asap, bebek goreng renyah, saus sambal bebek, atau nasi goreng bebek. Bebek Bengil adalah makanan Ubud terbaik dan Anda bisa makan bebek renyah di Bebek Bengil, Nusa Dua juga! Tetapi Anda harus memesan makanan ini sehari sebelumnya.',
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
          "10.00"
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
