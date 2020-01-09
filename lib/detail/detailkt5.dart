import 'package:flutter/material.dart';


class Detailkt5 extends StatelessWidget {

static const String routeName = '/Detailkt5';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/kt5.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'New Plengkung Resto',
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
        'Alamat: Jl. Raya Kuta No.90, Kuta, Bandung, Bali 80361',
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
          'Salah satu tempat makan halal special ayam / ikan bakar di Kuta adalah Ayam Plengkung Resto. Lokasinya sangat strategis karena berdekatan dengan Joger Bali (tempat membeli oleh-oleh khas Bali). Lalu bagaimana dengan rasa makanan di Ayam Plengkung Resto, apakah enak? Kalau saya yang mengatakan enak, akan sangat subjektif. Namun jika pembaca memperhatikan saat lewat di depan Ayam Plengkung Resto, pasti akan terlihat selalu ramai dengan pengunjung, bahkan sampai dini hari. Kesimpulannya, kalau tempat makan ramai, pastinya enak. Ruangan tempat makan di Ayam Plengkung Resto di bagi dua, satu ruangan tanpa AC dan yang lagi satu ber-AC. Selain menyediakan menu halal ikan atau ayam, juga tersedia pilihan menu plecing kangkung serta sayur asem. Saat kunjungan saya di Ayam Plengkung Resto Kuta bersama istri, saya memesan ikan kerapu goreng dengan harga Rp 40.000, dan Gurami Goreng harganya Rp 55.000, nasi putih 3 porsi Rp 21.000 dan 2 porsi Kangkung goreng Rp 35.000.',
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
          "09.00"
          ),
          _buildMenuSection(
          Icons.timer_off,
          "Closed", 
          "00.00"
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
