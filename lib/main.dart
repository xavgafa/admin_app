import 'package:admin_app/parts/activitatsActuals.dart';
import 'package:admin_app/parts/dadesActivitat.dart';
import 'package:admin_app/parts/dadesNoticia.dart';
import 'package:admin_app/parts/noticiariActual.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future <void> main() async {
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
    final noticies = FirebaseFirestore.instance
        .collection('Usuaris')
        .doc(
            'c5Dz89sXkUZ7s77yI8pdPQ6s0Nz1') // '${FirebaseAuth.instance.currentUser}'//'c5Dz89sXkUZ7s77yI8pdPQ6s0Nz1'
        .collection('inscripcions');
    return StreamBuilder(
      stream: noticies.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final llistaNoticies = snapshot.data;

        /* for (int i = 0; i < llistaActivitats.length; i++) {
              final activitat = llistaActivitats[i];
              if (inscripcions.contains(activitat.id)) {
                activitat.inscrita = true;
              }
            }*/

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gimnàs UFit: User App',
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
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
