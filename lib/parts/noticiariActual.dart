import 'package:flutter/material.dart';

class NoticiariActual extends StatefulWidget {
  const NoticiariActual({
    Key key,
  }) : super(key: key);

  @override
  _NoticiariActualState createState() => _NoticiariActualState();
}

class _NoticiariActualState extends State<NoticiariActual> {
  Widget noticia() {
    return ListTile(
      title: Text('TÍTOL NOTÍCIA'),
      trailing: FlatButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
        ),
      ),
      subtitle: Text('CONTINGUT NOTICIA'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 700,
      width: 400,
      color: Colors.amber,
      child: Scaffold(body:
        
          ListView.builder(
            itemCount: 6, /////////////////////////////////////////////
            itemBuilder: (context, index) {
              //final item = llistaActInscrites[index];
              return noticia();
            },
          ),
        
      ),
    );
  }
}

