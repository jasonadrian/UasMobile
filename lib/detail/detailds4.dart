import 'package:flutter/material.dart';


class Detailds4 extends StatelessWidget {

static const String routeName = '/Detailds4';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/ds4.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Rumah Makan Kedaton Sanur',
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
        'Alamat: Jalan By Pass Ngurah Rai No. 118, Sanur, Denpasar Selatan.',
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
          'Rumah makan Kedaton Sanur alamatnya di Jalan By Pass Ngurah Rai No. 118, Sanur – Denpasar. Lokasinya juga sangat dekat dengan pantai Matahari Terbit Sanur, hanya 3 kilometer. Tempat parkir mobil lumayan luas dan lokasi parkir mobil tepat berada didepan rumah makan. Suasana tempat makan sangat nyaman dan bersih. Untuk memesan makanan anda harus datang ke konter tempat makan dan memilih lauk dan sayur sendiri, kemudian pelayan akan mengambilkan lauk dan sayur yang anda pilih. Rasa makanan tidak khas Bali, sedikit ada rasa masakan Jawa dan saya melihat semua menu yang disediakan adalah makanan halal. Untuk harga makanan tertera di depan menu, jadi harga makanan tergantung dengan lauk yang anda pilih. Sebagai contoh, Sisit Ayam, Rp 5,000, Ayam Goreng Rp 5,000, Tumis Terong Rp 4,000. Waktu itu saya membayar untuk satu porsi nasi campur Rp 25,000 dan satu botol air mineral Rp 5,000.',
          textAlign: TextAlign.justify,
        )
    );

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star_half, color: Colors.yellow),
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
          "22.00"
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
