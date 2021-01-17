import 'package:flutter/material.dart';

class DadesNoticia extends StatefulWidget {
  const DadesNoticia({
    Key key,
  }) : super(key: key);

  @override
  _DadesNoticiaState createState() => _DadesNoticiaState();
}

class _DadesNoticiaState extends State<DadesNoticia> {
  TextEditingController controlTitol;
  TextEditingController controlContingut;

  @override
  void initState() {
    controlTitol = TextEditingController();
    controlContingut = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controlTitol.dispose();
    controlContingut.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      width: 400,
      color: Colors.purple[200],
      
      child: Scaffold(
      body:Column(children: [
        TextField(
          decoration: InputDecoration(labelText: 'Títol Notícia'),
          controller: controlTitol,
          maxLines: 1,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Contingut Notícia'),
          controller: controlContingut,
        ),
        Column(
          children: [
            Text('Rellevància:'),
            for (int i = 1; i < 4; i++)
              Row(
                children: [
                  Checkbox(
                      onChanged: (bool newValue) {
                        setState(
                            () {}); ////////////////////////////////////////// son checkbox exclusivos entre ellos
                      },
                      value: false),
                  Text('$i')
                ],
              )
          ],
        ),
        Row(
          children: [
            RaisedButton(
                child: Text('Crear'),
                color: Colors.green[200],
                onPressed: () {
                  // Navigator.of(context).pop(controlUsuario.text); //////////////
                }),
            RaisedButton(
                child: Text('Editar'),
                color: Colors.grey[300],
                onPressed: () {
                  // Navigator.of(context).pop(controlUsuario.text); /////////////////////
                }),
            RaisedButton(
                child: Text('Eliminar'),
                color: Colors.red,
                onPressed: () {
                  // Navigator.of(context).pop(controlUsuario.text); /////////////////////
                }),
          ],
        )
      ]),
    ));
  }
}
