import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailjm1.dart';
import 'package:culinaryguidebali/detail/detailjm2.dart';
import 'package:culinaryguidebali/detail/detailjm3.dart';

class ListJimbaran extends StatefulWidget {
  static const routeName = '/Listjimbaran';

  @override
  _ListJimbaranState createState() => new _ListJimbaranState();
}

class _ListJimbaranState extends State<ListJimbaran> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListJimbaran1(),
        ),
        );

    
  }
}

class ListJimbaran1 extends StatefulWidget {
  @override
  _ListJimbaran1 createState() => _ListJimbaran1();
}
 class _ListJimbaran1 extends State<ListJimbaran1> {
   final List_item = [
     {
       "nama" : "Menega Cafe",
       "creator" : "-",
       "pic" : "assets/images/jm1.jpg",
     },
     {
       "nama" : "Fat Chow Temple Hill",
       "creator" : "-",
       "pic" : "assets/images/jm2.jpg",
     },
     {
       "nama" : "Nelayan Restaurant",
       "creator" : "-",
       "pic" : "assets/images/jm3.jpg",
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
                   if(nama == "Menega Cafe") Navigator.of(context).pushNamed(Detailjm1.routeName);
                   if(nama == "Fat Chow Temple Hill") Navigator.of(context).pushNamed(Detailjm2.routeName);
                   if(nama == "Nelayan Restaurant") Navigator.of(context).pushNamed(Detailjm3.routeName);
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