import 'package:culinaryguidebali/list/listsingaraja.dart';
import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailkt1.dart';
import 'package:culinaryguidebali/detail/detailkt2.dart';
import 'package:culinaryguidebali/detail/detailkt3.dart';
import 'package:culinaryguidebali/detail/detailkt4.dart';
import 'package:culinaryguidebali/detail/detailkt5.dart';
import 'package:culinaryguidebali/detail/detailds1.dart';
import 'package:culinaryguidebali/detail/detailds2.dart';
import 'package:culinaryguidebali/detail/detailds3.dart';
import 'package:culinaryguidebali/detail/detailds4.dart';
import 'package:culinaryguidebali/detail/detailjm1.dart';
import 'package:culinaryguidebali/detail/detailjm2.dart';
import 'package:culinaryguidebali/detail/detailjm3.dart';
import 'package:culinaryguidebali/detail/detailnd1.dart';
import 'package:culinaryguidebali/detail/detailnd2.dart';
import 'package:culinaryguidebali/detail/detailsn1.dart';
import 'package:culinaryguidebali/detail/detailub1.dart';
import 'package:culinaryguidebali/detail/detailub2.dart';
import 'package:culinaryguidebali/detail/detailsm1.dart';
import 'package:culinaryguidebali/detail/detailsm2.dart';
import 'package:culinaryguidebali/detail/detailsm3.dart';
import 'package:culinaryguidebali/list/listkuta.dart';
import 'package:culinaryguidebali/list/listdenpasar.dart';
import 'package:culinaryguidebali/list/listjimbaran.dart';
import 'package:culinaryguidebali/list/listnusadua.dart';
import 'package:culinaryguidebali/list/listubud.dart';
import 'package:culinaryguidebali/list/listseminyak.dart';
import 'package:culinaryguidebali/content/favouriteculiner.dart';
import 'package:splashscreen/splashscreen.dart';
import './content/HomePage.dart';
import 'package:culinaryguidebali/content/mainPage.dart';


void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Humanity',
    theme: ThemeData(
      primaryColor: Colors.white,
      fontFamily: 'Jomolhari'
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => MyApp(),
      MainPage.routeName : (context) => MainPage(),
      HomePage.routeName : (context) => HomePage(),
      Detailkt1.routeName : (context) => Detailkt1(),
      Detailkt2.routeName : (context) => Detailkt2(),
      Detailkt3.routeName : (context) => Detailkt3(),
      Detailkt4.routeName : (context) => Detailkt4(),
      Detailkt5.routeName : (context) => Detailkt5(),
      Detailds1.routeName : (context) => Detailds1(),
      Detailds2.routeName : (context) => Detailds2(),
      Detailds3.routeName : (context) => Detailds3(),
      Detailds4.routeName : (context) => Detailds4(),
      Detailjm1.routeName : (context) => Detailjm1(),
      Detailjm2.routeName : (context) => Detailjm2(),
      Detailjm3.routeName : (context) => Detailjm3(),
      Detailnd1.routeName : (context) => Detailnd1(),
      Detailnd2.routeName : (context) => Detailnd2(),
      Detailsn1.routeName : (context) => Detailsn1(),
      Detailub1.routeName : (context) => Detailub1(),
      Detailub2.routeName : (context) => Detailub2(),
      Detailsm1.routeName : (context) => Detailsm1(),
      Detailsm2.routeName : (context) => Detailsm2(),
      Detailsm3.routeName : (context) => Detailsm3(),   
      HomePage.routeName :(context) => Listculiner(),
      ListKuta.routeName : (context) => ListKuta(),
      ListDenpasar.routeName : (context) => ListDenpasar(),
      ListJimbaran.routeName : (context) => ListJimbaran(),
      ListNusadua.routeName : (context) => ListNusadua(),
      ListSingaraja.routeName : (context) => ListSingaraja(),
      ListUbud.routeName : (context) => ListUbud(),
      ListSeminyak.routeName : (context) => ListSeminyak(),

   
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String title = 'Culinary Guide - Bali';
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MainPage(),
      title: new Text(this.title,    
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.orangeAccent
        ),
      ),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      onClick: ()=> print('Wait a moment please'),
      loaderColor: Colors.orangeAccent
    );
  }
}
