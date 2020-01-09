import 'package:flutter/material.dart';


class Detailkt2 extends StatelessWidget {

static const String routeName = '/Detailkt2';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/kt2.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Warung Murah Double-Six',
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
        'Alamat: Jl. Arjuna No. 99, Legian, Kuta, Kabupaten Badung, Bali',
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
          'Jika anda sedang mencari warung makan di sekitar Kuta Bali, menyajikan warung prasmanan, dengan menu masakan Indonesia, dan harga harus murah? Maka Warung Murah Double Six sangat cocok dengan kriteria yang anda cari. Warung Murah, sesuai dengan namanya, tempat makan ini menyajikan menu makanan dengan harga Rp 20.000/porsi. Satu porsi terdiri dari nasi putih, lauk dan sayur. Pilihan nasi juga ada banyak seperti nasi putih, nasi kuning dan nasi merah. Pilihan sayur dan sambal juga ada banyak. Selain itu anda bebas memilih lauk yang anda suka, asalkan dalam satu porsi hanya ada satu jenis lauk. Menu lauk yang tersedia di Warung Murah Double Six seperti Rendang sapi, Sate Ayam, Kentang Kare, Kare Ayam, Ayam Betutu.',
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
          "18:00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "22:45"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "Brfast,lnch,dinner"
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
