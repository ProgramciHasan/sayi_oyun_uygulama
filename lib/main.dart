import 'package:flutter/material.dart';
import 'TahminEkrani.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tahmin Oyunu",style: TextStyle(color: Colors.black54,fontSize: 36),),
            Image.asset("resimler/zar_resim.png"),
            SizedBox(width: 200, height: 50,
              child: ElevatedButton(
                child: Text("OYUN BAŞLA"),
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(color: Colors.green)

                ),

                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TahminEkrani()));
                },
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
