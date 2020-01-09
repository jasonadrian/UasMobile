import 'package:flutter/material.dart';


class Detailkt4 extends StatelessWidget {

static const String routeName = '/Detailkt4';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/kt4.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Bebek Tepi Sawah - Kuta',
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
        'Alamat: Krisna Wisata Kuliner Lantai 2, Jalan Raya Tuban, kuta',
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
          'kali ini ada tempat makan halal di Kuta Bali, yaitu Restoran Bebek Tepi Sawah Kuta. Jika menyebut nama restorant Bebek Tepi Sawah, saya yakin banyak pembaca akan berfikir lokasinya ada di objek wisata Ubud Bali. Memang tidak salah, awal terkenalnya restoran Bebek Tepi Sawah, berawal dari restoran Bebek Tepi Sawah yang berada di Ubud.Menu favorit dan halal dari restoran Bebek Tepi Sawah adalah bebek goreng / bakar dengan pilihan tiga sambal khas Bali, harganya per porsi, Rp 105.000. Namun jika pembaca ingin merasakan sensasi makan di tepi sawah, ya harus ke restoran Bebek Tepi Sawah di Ubud. Khusus untuk Bebek Tepi Sawah restoran di Tuban, ada parkir mobil besar di depan restoran.',
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
          "22.30"
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
