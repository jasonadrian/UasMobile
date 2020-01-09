import 'package:flutter/material.dart';



class Detailds3 extends StatelessWidget {

static const String routeName = '/Detailds3';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/ds3.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Warung Wardani Denpasar',
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
        'Alamat: Jl. Yudistira No.2, Dangin Puri Kauh, Kota Denpasar, Bali',
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
          'Warung Wardani merupakan salah satu tempat favorit para wisatawan untuk menyantap kuliner di daerah Denpasar. Lalu menu masakan apa yang disediakan di Warung Wardani Denpasar?Menu makanan yang tersedia di Warung Wardani Denpasar tidak terlalu banyak jenis pilihan. Menu makanan yang ada di Warung Wardani Denpasar seperti : nasi campur khas bali, gado - gado, soto ayam, soto Babat, nasi kare.Harga nasi Campur nomer tiga Rp 50,000/porsi. Untuk minuman, biasanya saya memesan 1 botol air mineral. Jika anda mencari tempat makan murah di Denpasar, maka warung Wardani dengan harga satu porsi Rp 50,000 tidak masuk kategori murah. Untuk rasa makanan, sangat enak bagi saya dan membuat saya ketagihan. Rasa nasi campur sangat gurih, walaupun agak manis namun pas dilidah.',
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
          "08.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "16.00"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "brfast,lnch"
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
