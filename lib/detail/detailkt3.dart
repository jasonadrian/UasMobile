import 'package:flutter/material.dart';


class Detailkt3 extends StatelessWidget {

static const String routeName = '/Detailkt3';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/kt3.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Nasi Pedas Ibu Andika',
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
        'Alamat: Jl. Raya Kuta, Gg. Kubu No. 120 C',
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
          'Dari nama warung, sepertinya pembaca sudah dapat mengira, bahwa warung makan halal di Kuta ini menyediakan nasi pedas. Ternyata bukan pembaca, nasinya biasa aja seperti nasi putih yang di makan sehari-hari, namun lauknya pedas banget! Siap-siap, satu botol air mineral 600 ml sebelum makan! Tempat makan nasi pedas Ibu Andika konsepnya sangat sederhana, seperti warung pinggir jalan yang biasa pembaca lihat. Hanya saja ramainya yang belanja bukan main! Tumben saya lihat warung pinggir jalan seramai ini. Menu makanan ditata dengan rapi dan dijamin halal, pemiliknya orang muslim. Untuk memarkir mobil Anda, satu-satunya pilihan adalah di pinggir jalan. Ketika Anda tiba di warung makan, Anda akan melihat banyak pilihan menu di konter makanan. Yang perlu Anda lakukan, melihat menu yang dipajang dan memilih makanan yang ingin Anda coba. Selama kunjungan saya, saya memesan daftar di bawah ini, makanannya cukup banyak untuk ukuran saya dan harganya Rp 35.000. Ayam sisit, hati ayam, ayam goreng, sate ayam, kulit ayam bumbu merah, mie goreng, perkedel jagung, semur daging sapi, teri goreng, Kacang tanah goreng dan sambal andalannya yaitu sambal pedas.',
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
          "24 Hours"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "24 Hours"
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
