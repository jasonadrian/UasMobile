import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailnd1.dart';
import 'package:culinaryguidebali/detail/detailnd2.dart';

class ListNusadua extends StatefulWidget {
  static const routeName = '/Listnusadua';

  @override
  _ListNusaduaState createState() => new _ListNusaduaState();
}

class _ListNusaduaState extends State<ListNusadua> {
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
       "nama" : "Nyoman Beer Garden Bar & Restaurant",
       "creator" : "-",
       "pic" : "assets/images/nd1.jpg",
     },
     {
       "nama" : "Bebek Bengil",
       "creator" : "-",
       "pic" : "assets/images/nd2.jpg",
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
                   if(nama == "Nyoman Beer Garden Bar & Restaurant") Navigator.of(context).pushNamed(Detailnd1.routeName);
                   if(nama == "Bebek Bengil") Navigator.of(context).pushNamed(Detailnd2.routeName);
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