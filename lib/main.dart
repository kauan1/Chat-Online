import 'package:flutter/material.dart';
import 'package:chat_online/ui/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{

  /*QuerySnapshot snapshot = await Firestore.instance.collection("usuarios").getDocuments();-pega uma foto de todos os documentos

  for(DocumentSnapshot doc in snapshot.documents){
    print(doc.data);
  }

  Firestore.instance.collection("mensagem").snapshots().listen((snapshot){-pega os dado em tempo real

    for(DocumentSnapshot doc in snapshot.documents){
      print(doc.data);
    }

  });*/

  runApp(Home());
}

final ThemeData kIOSTheme = ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.green[100],
  primaryColorBrightness: Brightness.light
);
final ThemeData kDefaultTheme = ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400]
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Online",
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).platform == TargetPlatform.iOS ?
      kIOSTheme : kDefaultTheme,
      home: ChatScreen(),
    );
  }
}
