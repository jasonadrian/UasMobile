import 'package:flutter/material.dart';



class Detailub1 extends StatelessWidget {

static const String routeName = '/Detailub1';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/ub1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Nusantara By Locavore',
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
        'Alamat: Jl. Dewisita No.09C, Ubud, Kab Gianyar, Bali',
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
          'Locavore menawarkan pengalaman kuliner “makan dikit-dikit tapi macam-macam”, dengan jeda waktu sekitar 5-10 menit antara tiap menu. Saya pikir, waktu ini diperuntukkan agar bisa makan dengan seksama, mengecap setiap rasa. Menunya pun berbentuk pilihan set 5 atau 7 hidangan, bukan ala carte selayaknya restoran biasa. Kebanyakan bahan didapat dari petani dan peternak lokal, namun pengolahan serta presentasinya tidak seperti makanan Indonesia; lebih “nyeni” dan tampak ditata dengan penuh kasih sayang. Di restoran ini, ada dua jenis menu, locavore (karnivora) yang berisi berbagai jenis daging dan herbivora untuk vegetarian. Isi menu bisa berubah-ubah, tapi untungnya saya masih bisa mencicipi menu yang direkomendasikan Ruby. “Into the Sawah” sendiri merupakan menu yang terbuat dari bahan-bahan yang ditemukan di sawah. Rasanya? Luar biasa! Kuning telur bebek antara setengah matang dan matang, rasanya sedikit padat, tapi meleleh di mulut. Di bawah telur, ada nasi yang terasa gurih, dan hidangannya dihias bunga! Makanan lainnya pun punya rasa unik yang bikin saya mikir, “Kok rasanya bisa gitu, ya?” Makan di Locavore benar-benar suatu petualangan kuliner. Recommended? Buat petualang kuliner, pasti!.',
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
          "18.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "21.30"
          ),
          _buildMenuSection(
          Icons.fastfood,
          "Open for", 
          "dinner"
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
