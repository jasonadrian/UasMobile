import 'package:flutter/material.dart';


class Detailkt1 extends StatelessWidget {

static const String routeName = '/Detail';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/kt1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Gourmet Sate House',
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
        'Alamat: Jalan Dewi Sri No. 101, Kuta-Bali.',
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
          'Sebagian besar orang Indonesia menyukai hidangan makanan berupa sate, termasuk saya. Jika anda juga sama menyukai sate, maka saat anda liburan ke Kuta Bali, sangat saya sarankan untuk mengunjungi Gourmet Sate House. Tempat makan di Kuta ini khusus menyajikan hidangan sate, dan untuk saat ini ada 12 jenis hidangan sate yang berbeda. Semua menu sate disajikan dengan saus kacang, acar dengan pilihan nasi atau lontong. Selain itu, harga makanan dapat berubah sewaktu-waktu. Jenis kuliner sate, seperti yang anda tahu harga per porsi lebih mahal, jika anda bandingkan dengan kuliner Indonesia lainnya. Untuk menjaga aroma dan rasa sate, Gourmet Sate House menggunakan pemanggangan menggunakan arang, jadi bukan pemanggangan menggunakan gas. Selain hidangan sate, Gourmet Sate House juga menyajikan kuliner Indonesia lainnya dan lebih banyak menu yang di panggang. Maka dari itu, jika anda ingin menikmati hidangan sate saat liburan di Bali dan bersedia menyisihkan budget makan lebih, saran saya kunjungi tempat makan Gourmet Sate House Kuta.',
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
          "17:00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "00:00"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "Dinner"
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
