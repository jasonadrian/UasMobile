import 'package:carousel_slider/carousel_slider.dart';
import 'package:culinaryguidebali/detail/detailkt3.dart';
import 'package:culinaryguidebali/detail/detailsm2.dart';
import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailjm1.dart';
import 'package:culinaryguidebali/detail/detailjm2.dart';


class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  @override
  HomePageState createState()=> new HomePageState();
}

class HomePageState extends State<HomePage> {

  static final List<String> photos = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.png',
    'assets/images/slider4.jpg',
  ];

  final CarouselSlider autoPlayImage = CarouselSlider(
    items: photos.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            '${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 200,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text('Culinary Guide - Bali',
          style: TextStyle( 
            color: Colors.black,
            fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orangeAccent,
        ),

      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 15.0,
              ),
              autoPlayImage,
              Container(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('Our Recommendation',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

              Column(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('Pison Coffee Seminyak',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

            Column(
                children: <Widget>[

                  Text('08.00-23.00',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/sm2.jpg',
                      height: 245,
                      width: 360,)
                    ],
                  ),
                 
                ],
              ),

                RaisedButton(
                        color: Colors.orange,
                        child: Text('Lihat'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detailsm2.routeName);
                        },
                      ),

              Column(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('Nasi Pedas Ibu Andika',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

            Column(
                children: <Widget>[

                  Text('24 Hours',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/kt3.jpg',
                      height: 245,
                      width: 360,)
                    ],
                  ),
                 
                ],
              ),

                RaisedButton(
                        color: Colors.orange,
                        child: Text('Lihat'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detailkt3.routeName);
                        },
                      ),

                                    Column(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('Menega Cafe Jimbaran',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

            Column(
                children: <Widget>[

                  Text('11.00-23.00',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/jm1.jpg',
                      height: 245,
                      width: 360,)
                    ],
                  ),
                 
                ],
              ),

                RaisedButton(
                        color: Colors.orange,
                        child: Text('Lihat'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detailjm1.routeName);
                        },
                      ),

                                   Column(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 15,
                  ),
                  Text('Fat Chow Temple Hill',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

            Column(
                children: <Widget>[

                  Text('12.00-23.00',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Container(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset('assets/images/jm2.jpg',
                      height: 245,
                      width: 360,)
                    ],
                  ),
                 
                ],
              ),

                RaisedButton(
                        color: Colors.orange,
                        child: Text('Lihat'),
                        onPressed: () {
                          Navigator.pushNamed(context, Detailjm2.routeName);
                        },
                      ),


            ],
          ),
          Container(
            height: 15,
          ),
        ],
      ),
    );
  }
}