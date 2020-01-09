import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailds1.dart';
import 'package:culinaryguidebali/detail/detailds2.dart';
import 'package:culinaryguidebali/detail/detailds3.dart';
import 'package:culinaryguidebali/detail/detailds4.dart';
class ListDenpasar extends StatefulWidget {
  static const routeName = '/Listdenpasar';

  @override
  _ListDenpasarState createState() => new _ListDenpasarState();
}

class _ListDenpasarState extends State<ListDenpasar> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListDenpasar1(),
        ),
        );

    
  }
}

class ListDenpasar1 extends StatefulWidget {
  @override
  _ListDenpasar1 createState() => _ListDenpasar1();
}
 class _ListDenpasar1 extends State<ListDenpasar1> {
   final List_item = [
     {
       "nama" : "Warung Mak Beng",
       "creator" : "-",
       "pic" : "assets/images/ds1.jpg",
     },
     {
       "nama" : "Ayam Betutu Khas Gilimanuk - Denpasar",
       "creator" : "-",
       "pic" : "assets/images/ds2.jpg",
     },
     {
       "nama" : "Warung Wardani Denpasar",
       "creator" : "-",
       "pic" : "assets/images/ds3.jpg",
     },
     {
       "nama" : "Rumah Makan Kedaton Sanur",
       "creator" : "-",
       "pic" : "assets/images/ds4.jpg",
     },
   ];
    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: List_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
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
                   if(nama == "Warung Mak Beng") Navigator.of(context).pushNamed(Detailds1.routeName);
                   if(nama == "Ayam Betutu Khas Gilimanuk - Denpasar") Navigator.of(context).pushNamed(Detailds2.routeName);
                   if(nama == "Warung Wardani Denpasar") Navigator.of(context).pushNamed(Detailds3.routeName);
                   if(nama == "Rumah Makan Kedaton Sanur") Navigator.of(context).pushNamed(Detailds4.routeName);
                  // Navigator.of(context).pushNamed(KelolaDana.routeName);
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