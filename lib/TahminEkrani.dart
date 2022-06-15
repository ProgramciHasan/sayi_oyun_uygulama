
import 'package:flutter/material.dart';
import 'SonucEkrani.dart';
import 'dart:math';

class TahminEkrani extends StatefulWidget {
  @override
  _TahminEkraniState createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

  var tfTahmin = TextEditingController();
  int rasgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rasgeleSayi = Random().nextInt(101);//0  - 100
    print("Rasgele Sayı : $rasgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Kalan Hak : $kalanHak",style: TextStyle(color: Colors.pink,fontSize: 30),),
            Text("Yardım : $yonlendirme",style: TextStyle(color: Colors.black54,fontSize: 24),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TAHMİN ET"),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(color:Colors.green,)
                ),
                onPressed: (){

                  setState(() {
                    kalanHak = kalanHak - 1 ;
                  });

                  int tahmin = int.parse(tfTahmin.text);

                  if(tahmin == rasgeleSayi){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc:true,kazandin: "Kazandın!",)));
                    return;
                  }

                  if(tahmin > rasgeleSayi){
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }

                  if(tahmin < rasgeleSayi){
                    setState(() {
                      yonlendirme = "Tahmini Arttır";
                    });
                  }

                  if(kalanHak == 0){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SonucEkrani(sonuc:false,kazandin: "Kaybettin",)));
                  }

                  tfTahmin.text = "";

                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
