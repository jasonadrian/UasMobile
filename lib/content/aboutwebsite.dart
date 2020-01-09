import 'package:flutter/material.dart';



class Aboutwebsite extends StatelessWidget {

static const String routeName = '/Detailds1';
@override
  Widget build(BuildContext context) {

    Widget imageSection = Container(
      child: Image.asset('assets/images/slider1.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Culinary Guide -Bali',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ); 

 
    
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
          'Merupahkan Aplikasi Web Mobile yang dibuat untuk mempermudah para wisatawan yang ingin mencari tempat tempat kuliner yang populer, enak , bersih serta yang terpenting dengan harga yang murah. Tempat tempat yang kami rekomendasikan sangat cocok untuk para wisatawan dan dekat dengan pusat pusat kota yang terkenal di sekitar pulau bali. Diharapkan dengan adanya web mobile aplikasi ini dapat lebih membantu para wisatawan untuk lebih mudah melakukan wisata kuliner (culinary travel) di pulau yang indah ini. Terima Kasih. Salam creator : Jason Adrian',
          textAlign: TextAlign.justify,
        )
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
    
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
            ),
         
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
