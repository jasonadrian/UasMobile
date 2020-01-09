import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailub1.dart';
import 'package:culinaryguidebali/detail/detailub2.dart';

class ListUbud extends StatefulWidget {
  static const routeName = '/Listubud';

  @override
  _ListUbudState createState() => new _ListUbudState();
}

class _ListUbudState extends State<ListUbud> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListUbud1(),
        ),
        );

    
  }
}

class ListUbud1 extends StatefulWidget {
  @override
  _ListUbud1 createState() => _ListUbud1();
}
 class _ListUbud1 extends State<ListUbud1> {
   final List_item = [
     {
       "nama" : "Nusantara By Locavore",
       "creator" : "-",
       "pic" : "assets/images/ub1.jpg",
     },
     {
       "nama" : "Soma Cafe",
       "creator" : "-",
       "pic" : "assets/images/ub2.jpg",
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
                   if(nama == "Nusantara By Locavore") Navigator.of(context).pushNamed(Detailub1.routeName);
                   if(nama == "Soma Cafe") Navigator.of(context).pushNamed(Detailub2.routeName);
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