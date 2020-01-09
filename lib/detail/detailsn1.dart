import 'package:flutter/material.dart';



class Detailsn1 extends StatelessWidget {

static const String routeName = '/Detailsn1';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/sn1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Buda Bakery & Resto',
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
        'Alamat: Perumahan BTN Graha Lovina, Jl. I Gede Taman No.26, Singaraja , Bali',
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
          'Berada di Gg. Padma, Anturan, Kec. Buleleng, Singaraja, Bali 81152, Buda Bakery and Resto ini merupakan sebuah toko roti dan juga sebuah restoran. Ketika berada di lantai pertama, Anda bisa melihat toko roti dengan roti yang dipajang yang terlihat menggugah selera. Di sini, kapasitasnya pengunjungnya tidak terlalu banyak. Beralih ke lantai dua, di sini kapasitas kursi pengunjung cukup banyak. Kursi dan meja ditata dengan pemandangan luar biasa dari lantai dua. Ada pemandangan gunung dari kejauhan hingga rumah-rumah warga yang berjejeran. Semua keindahan di sekitar Singaraja terlihat indah. Desain konsep minimalis diterapkan dengan baik. Pencahayaan di Buda Bakery and Resto juga cukup baik. Pemilihan kursi dan meja yang terbuat dari kayu di rasa sangat pas dengan kesan alaminya. Suasananya sangat nyaman dan juga ramah anak-anak. Setiap harinya dibuka setiap jam 8 pagi hingga jam 10 malam. Makanan yang disajikan berupa roti dan lain-lain juga cukup lezat dengan dipadukan minuman-minuman yang menarik untuk dicicipi. Harga yang ditawarkan sangat beragam. Anda bisa memilih menu sesuai selera. Anda pun dapat menikmati sajian yang mereka tawarkan dengan suasana nyaman. Dengan lokasi strategis yang mudah dijangkau itu, Anda dapat menyempatkan sedikit waktu untuk mampir ke restoran ini. Apalagi, kalau Anda adalah pencinta bakery, pastinya bakal terpuaskan dengan menu yang ditawarkan pihak restoran..',
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
