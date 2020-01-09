import 'package:flutter/material.dart';
import 'package:culinaryguidebali/list/listkuta.dart';
import 'package:culinaryguidebali/list/listdenpasar.dart';
import 'package:culinaryguidebali/list/listjimbaran.dart';
import 'package:culinaryguidebali/list/listnusadua.dart';
import 'package:culinaryguidebali/list/listsingaraja.dart';
import 'package:culinaryguidebali/list/listubud.dart';
import 'package:culinaryguidebali/list/listseminyak.dart';


class LocationHome extends StatefulWidget {
  @override
  createState() => LocationHState();
}

class LocationHState extends State<LocationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListGalangDana(),
        ),
        );

    
  }
}

class ListGalangDana extends StatefulWidget {
  @override
  _ListGalangDana createState() => _ListGalangDana();
}
 class _ListGalangDana extends State<ListGalangDana> {
   final List_item = [
     {
       "nama" : "Kuta",
       "creator" : "-",
       "pic" : "assets/images/kuta.jpg",
     },
     {
       "nama" : "Denpasar",
       "creator" : "-",
       "pic" : "assets/images/denpasar.jpg",
     },
     {
       "nama" : "Seminyak",
       "creator" : "-",
       "pic" : "assets/images/seminyak.jpg",
     },
     {
       "nama" : "Jimbaran",
       "creator" : "-",
       "pic" : "assets/images/jimbaran.jpg",
     },
     {
       "nama" : "Nusa Dua",
       "creator" : "-",
       "pic" : "assets/images/nusadua.jpg",
     },
     {
       "nama" : "Singaraja",
       "creator" : "-",
       "pic" : "assets/images/singaraja.jpg",
     },
     {
       "nama" : "Ubud",
       "creator" : "-",
       "pic" : "assets/images/ubud.jpg",
     },
   ];
    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: List_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Keterangan(
            nama: List_item[index]['nama'],
            penggalang: List_item[index]['creator'],
            gambar: List_item[index]['pic'],
          );
        }
        );
    } 
  }

class Keterangan extends StatelessWidget {
  final nama;
  final penggalang;
  final gambar;
  Keterangan({
    this.nama,
    this.penggalang,
    this.gambar});
 @override
 Widget build(BuildContext context){
   return Card(
     child: Hero(
       tag: nama,
       child: Material(
         child: InkWell(
           onTap: (){},
           child: GridTile(
             footer: Container(
               color: Colors.black,
               child: ListTile(
                 leading: Text(nama,style: TextStyle(color: Colors.orange),),
                 title: Text('$penggalang',style: TextStyle(color: Colors.white,),),
                 onTap: () {
                   if(nama == "Kuta") Navigator.of(context).pushNamed(ListKuta.routeName);
                   if(nama == "Denpasar") Navigator.of(context).pushNamed(ListDenpasar.routeName);
                   if(nama == "Jimbaran") Navigator.of(context).pushNamed(ListJimbaran.routeName);
                   if(nama == "Nusa Dua") Navigator.of(context).pushNamed(ListNusadua.routeName);
                   if(nama == "Singaraja") Navigator.of(context).pushNamed(ListSingaraja.routeName);
                   if(nama == "Ubud") Navigator.of(context).pushNamed(ListUbud.routeName);
                   if(nama == "Seminyak") Navigator.of(context).pushNamed(ListSeminyak.routeName);
                  // else Navigator.of(context).pushNamed(KelolaDana.routeName);
                 },
                 ),
             ),
             child: Image.asset(gambar, fit: BoxFit.cover,),
           ),
           )
       ),
     ),
   );

 
 }
}