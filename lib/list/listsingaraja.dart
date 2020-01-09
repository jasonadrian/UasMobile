import 'package:flutter/material.dart';
import 'package:culinaryguidebali/detail/detailsn1.dart';

class ListSingaraja extends StatefulWidget {
  static const routeName = '/Listsingaraja';

  @override
  _ListSingarajaState createState() => new _ListSingarajaState();
}

class _ListSingarajaState extends State<ListSingaraja> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culinary Guide - Bali',style: TextStyle (color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body:  
     
      Container(
        child: ListSingaraja1(),
        ),
        );

    
  }
}

class ListSingaraja1 extends StatefulWidget {
  @override
  _ListSingaraja1 createState() => _ListSingaraja1();
}
 class _ListSingaraja1 extends State<ListSingaraja1> {
   final List_item = [
     {
       "nama" : "Buda Bakery & Resto",
       "creator" : "-",
       "pic" : "assets/images/sn1.jpg",
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
                   if(nama == "Buda Bakery & Resto") Navigator.of(context).pushNamed(Detailsn1.routeName);
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