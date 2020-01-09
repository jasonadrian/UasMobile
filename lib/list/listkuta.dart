import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailkt1.dart';
import 'package:culinaryguidebali/detail/detailkt2.dart';
import 'package:culinaryguidebali/detail/detailkt3.dart';
import 'package:culinaryguidebali/detail/detailkt4.dart';
import 'package:culinaryguidebali/detail/detailkt5.dart';

class ListKuta extends StatefulWidget {
  static const routeName = '/Listkuta';

  @override
  _ListKutaState createState() => new _ListKutaState();
}

class _ListKutaState extends State<ListKuta> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListKuta1(),
        ),
        );

    
  }
}

class ListKuta1 extends StatefulWidget {
  @override
  _ListKuta1 createState() => _ListKuta1();
}
 class _ListKuta1 extends State<ListKuta1> {
   final List_item = [
     {
       "nama" : "Gourmet Sate House",
       "creator" : "-",
       "pic" : "assets/images/kt1.jpg",
     },
     {
       "nama" : "Warung Murah Double-Six",
       "creator" : "-",
       "pic" : "assets/images/kt2.jpg",
     },
     {
       "nama" : "Nasi Pedas Ibu Andika",
       "creator" : "-",
       "pic" : "assets/images/kt3.jpg",
     },
     {
       "nama" : "Bebek Tepi Sawah - Kuta",
       "creator" : "-",
       "pic" : "assets/images/kt4.jpg",
     },
     {
       "nama" : "New Plengkung Resto",
       "creator" : "-",
       "pic" : "assets/images/kt5.jpg",
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
                   if(nama == "Gourmet Sate House") Navigator.of(context).pushNamed(Detailkt1.routeName);
                   if(nama == "Warung Murah Double-Six") Navigator.of(context).pushNamed(Detailkt2.routeName);
                   if(nama == "Nasi Pedas Ibu Andika") Navigator.of(context).pushNamed(Detailkt3.routeName);
                   if(nama == "Bebek Tepi Sawah - Kuta") Navigator.of(context).pushNamed(Detailkt4.routeName);
                   if(nama == "New Plengkung Resto") Navigator.of(context).pushNamed(Detailkt5.routeName);
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