import 'package:flutter/material.dart';


class Detailds2 extends StatelessWidget {

static const String routeName = '/Detailds2';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/ds2.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Ayam Betutu Khas Gilimanuk - Denpasar',
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
        'Alamat: Jl. Merdeka No.88 No.5, Sumerta Kelod, Kota Denpasar, Bali',
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
          'Selanjutnya adalah Rumah Makan Ayam Betutu Gilimanuk. Jika anda menyukai wisata kuliner saat liburan di Bali, ada baiknya anda mencoba menu kuliner khas Bali. Ada banyak jenis menu kuliner khas Bali salah satunya adalah kuliner Ayam Betutu. Ada banyak penyedia menu Ayam Betutu di pulau Bali, namun yang digemari wisatawan Indonesia adalah nasi Ayam Betutu Khas Gilimanuk.  Apakah semua menu makanan yang disediakan rumah makan Ayam Betutu Khas Gilimanuk halal? Semua menu makanan yang disediakan rumah makan Ayam Betutu Khas Gilimanuk halal, karena hanya ada menu makanan dari daging ayam.biasanya saya memesan 1 paket ayam betutu ½ ekor. Harga 1 paket ayam betutu ½ ekor, Rp 64,000. Dalam paket terdapat nasi putih, Ayam Betutu, sayur plecing, sambal matah, kacang tanah san satu botol teh. Selain menu nasi Ayam Betutu, di rumah makan Ayam Betutu khas Gilimanuk juga tersedia menu nasi campur khas Bali. Nama menunya Nasi Bali Tempoe Doeloe. Bagi anda yang tidak suka pedas, sebaiknya anda memesan menu Nasi Bali Tempoe Doeloe dan harga per porsi Rp 20,000, belum termasuk minum.',
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
          "10.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "21.00"
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
