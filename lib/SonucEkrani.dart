import 'package:flutter/material.dart';
import 'TahminEkrani.dart';

class SonucEkrani extends StatefulWidget {
  bool? sonuc;
  String? kazandin;
  SonucEkrani({this.sonuc,this.kazandin});
  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Image.asset("resimler/mutlu_resim.png") ,
            Text(widget.kazandin,style: TextStyle(color: Colors.black54,fontSize: 36),),
            ElevatedButton(
              onPressed: () {

                  Navigator.pop(context);

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(fontSize: 30),
              ),

              child:Text("TEKRAR DENE",style: TextStyle(fontSize: 30,color: Colors.white),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

