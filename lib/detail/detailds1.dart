import 'package:flutter/material.dart';

class Detailds1 extends StatelessWidget {

static const String routeName = '/Detailds1';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/ds1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Warung Mak Beng',
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
        'Alamat: Jl. Hang Tuah No.45, Sanur Kaja, Denpasar Selatan',
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
          'Warung Mak Beng Sanur salah satu tempat makan di Denpasar timur yang sangat terkenal. Rata-rata wisatawan Indonesia yang liburan ke pulau Bali pasti tertarik untuk mencoba makan di Warung Mak Beng Sanur. Tempat makan Warung Mak Beng Sanur buka dari pukul 08:00 – 22:00. Warung Mak Beng Sanur alamatnya berada di Jalan Hang Tuah No. 45, Sanur Bali. Lokasi warung Mak Beng sangat strategis karena berdekatan dengan lokasi pantai Sanur, serta berdekatan dengan lokasi fast boat untuk penyeberangan ke pulau Nusa Lembongan. Jika anda sedang liburan di pantai Sanur Bali dan mencari tempat makan terdekat, ada baiknya anda mencoba wisata kuliner di Warung Makan Mak Beng. Di warung Mak Beng Sanur hanya ada 1 menu makanan, terdiri dari Ikan laut goreng, nasi putih, sop sayur isi kepala ikan. Jadi anda tidak perlu lagi memesan menu makanan. Harga menu Mak Beng Rp 45,000 / porsi dan ukuran porsi lumayan banyak.',
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
