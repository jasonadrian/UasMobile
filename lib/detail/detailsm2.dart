import 'package:flutter/material.dart';


class Detailsm2 extends StatelessWidget {

static const String routeName = '/Detailsm2';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/sm2.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Pison Coffee Seminyak',
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
        'Alamat:  Jl. Petitenget No.19 A, Kerobokan Kelod, Seminyak Bali.',
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
          'Cafe Pison Coffee Seminyak menyediakan hidangan fusion dan beranekaragam jenis kopi. Keunggulan cafe ini, terletak pada desain interior dengan ambient lighting yang sangat cantik. Jika anda menyukai nongkrong di tempat nyaman, dengan desain interior keren, sambil nyeruput kopi. Maka Cafe Pison Coffee di Seminyak, wajib anda kunjungi. Pengalaman saya berkunjung, saya pribadi sangat kagum dengan embient ruangan, rasa kopi lumayan enak dan harga masih masuk kategori standar untuk di wilayah Seminyak. Pada saat saya melihat daftar menu Pison Coffee Seminyak, arah mata langsung ke bagian halaman menu kopi. Pada bagian bawah kanan menu terdapat menu kopi special khas Pison Coffee. Namanya Espresso Avocado. Keterangan pada menu Espresso Avocado, terdapat jus alpukat, sirup coklat, vanilla ice cream dan isi toping espresso. Harga Espresso Avocado satu porsi, Rp 48,000.',
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
          "23.00"
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
