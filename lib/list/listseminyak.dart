import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailsm1.dart';
import 'package:culinaryguidebali/detail/detailsm2.dart';
import 'package:culinaryguidebali/detail/detailsm3.dart';

class ListSeminyak extends StatefulWidget {
  static const routeName = '/Listseminyak';

  @override
  _ListSeminyakState createState() => new _ListSeminyakState();
}

class _ListSeminyakState extends State<ListSeminyak> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListSeminyak1(),
        ),
        );

    
  }
}

class ListSeminyak1 extends StatefulWidget {
  @override
  _ListSeminyak1 createState() => _ListSeminyak1();
}
 class _ListSeminyak1 extends State<ListSeminyak1> {
   final List_item = [
     {
       "nama" : "Warung Cahaya",
       "creator" : "-",
       "pic" : "assets/images/sm1.jpg",
     },
     {
       "nama" : "Pison Coffee Seminyak",
       "creator" : "-",
       "pic" : "assets/images/sm2.jpg",
     },
     {
       "nama" : "Sea Circus Cafe Seminyak",
       "creator" : "-",
       "pic" : "assets/images/sm3.jpg",
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
                   if(nama == "Warung Cahaya") Navigator.of(context).pushNamed(Detailsm1.routeName);
                   if(nama == "Pison Coffee Seminyak") Navigator.of(context).pushNamed(Detailsm2.routeName);
                   if(nama == "Sea Circus Cafe Seminyak") Navigator.of(context).pushNamed(Detailsm3.routeName);
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