import 'package:admin_app/parts/activitatsActuals.dart';
import 'package:admin_app/parts/dadesActivitat.dart';
import 'package:admin_app/parts/dadesNoticia.dart';
import 'package:admin_app/parts/noticiariActual.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //Container(color: Colors.black, height: 30, width: 30),
          ActivitatsActuals(),
          DadesActivitat(),
          NoticiariActual(),
          DadesNoticia(),
        ],
      ),
    );
  }
}


