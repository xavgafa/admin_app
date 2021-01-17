import 'package:admin_app/parts/activitatsActuals.dart';
import 'package:admin_app/parts/dadesActivitat.dart';
import 'package:admin_app/parts/dadesNoticia.dart';
import 'package:admin_app/parts/noticiariActual.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.2
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
  final a = FirebaseFirestore.instance
      .collection('Activitats')
      .doc('c5Dz89sXkUZ7s77yI8pdPQ6s0Nz1')
      .collection('inscripcions');
    
  @override
  Widget build(BuildContext context) {
    print('$a');
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text('$a'),
          Container(color: Colors.black, height: 30, width: 30),
          ActivitatsActuals(),
          DadesActivitat(),
          NoticiariActual(),
          DadesNoticia(),
        ],
      ),
    );
  }
}
