import 'package:flutter/material.dart';



class Detailub2 extends StatelessWidget {

static const String routeName = '/Detailub2';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/ub2.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Soma Cafe',
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
        'Alamat: Jl. Gootama, Kec Ubud, KabGianyar, Bali',
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
          'Ubud terkenal sebagai tempat untuk hidup sehat. Selain sebagai pusat kegiatan yoga dan semadi, jalan-jalan kecil Ubud menyediakan banyak makanan sehat. Soma adalah restoran rekomendasi Windy Ariestanty, penikmat menu vegetarian. “Makanan yang baik adalah makanan yang adil sejak dari dibuat. Adil di sini maksudnya adil bagi penyedia bahan, pembuat, dan penikmat,” ujar Windy Ariestanty, mengutip Om Johny, sang pemilik Soma. Restoran ini menyajikan menu vegetarian dan makanan mentah. Bahan yang digunakan di restoran ini diperoleh dari petani lokal atau ditanam sendiri oleh Om Johny. Tempe patty adalah menu yang direkomendasikan oleh si Om, berupa tempe yang dihancurkan dan dimasak dengan bumbu gurih, kemudian diletakkan di atas bengkoang dan ditemani bok choy. Kedengarannya mungkin tidak menarik, tapi sungguh rasanya enak!. Saya juga sempat mencoba pie cokelat yang diberi label “raw” pada menu. Ternyata, “raw” di sini bukan berarti pie cokelatnya mentah, tapi dibuat dengan proses pengolahan seminimal mungkin. Cokelatnya legit, kaya rasa, dan disajikan di atas adonan yang terasa seperti wajik ketan hitam. Makanan penutup mentah yang sedap! Selain makanannya yang enak, suasana Soma juga berbeda. Area terbukanya dialiri udara Ubud yang lebih sejuk dibandingkan area selatan Bali. Pengunjungnya pun orang-orang yang terlihat santai. Karena di Soma makanannya sudah sehat-sehat, jangan lupa coba juga minuman sehatnya!',
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
          "08.30"
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
