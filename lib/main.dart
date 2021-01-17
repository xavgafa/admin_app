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
          //Container(color: Colors.black, height: 30, width: 30)
          ActivitatsActuals(),
          DadesActivitat(),
          NoticiariActual(),
          DadesNoticia(),
        ],
      ),
    );
  }
}

class ActivitatsActuals extends StatefulWidget {
  //FALTA AQUEST: CANVIAR A 3 TEXT FIELD PER DEMANAR DIA A VISUALITZAR?
  const ActivitatsActuals({
    Key key,
  }) : super(key: key);

  @override
  _ActivitatsActualsState createState() => _ActivitatsActualsState();
}

class _ActivitatsActualsState extends State<ActivitatsActuals> {
  TextEditingController _day;
  TextEditingController _month;
  TextEditingController _year;
  final int dia = 18, month = 1, year = 2021;

  @override
  void initState() {
    _day = TextEditingController(text: '$dia');
    _month = TextEditingController(text: '$month');
    _year = TextEditingController(text: '$year');
    super.initState();
  }

  @override
  void dispose() {
    _day = TextEditingController();
    _month = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 700,
      width: 400,
      color: Colors.blue[100],
      /*child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Llista Activitats',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                /*IconButton(
                  icon: Icon(Icons.delete, color: Colors.black),
                  onPressed: () {},
                ),*/
              ],
            ),
            /*SizedBox(height: 10),
            Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 50,
                  //color: Colors.blue,
                  child: TextField(
                    controller: _day,
                    decoration: InputDecoration(
                      labelText: 'Dia',
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 60,
                  height: 50,
                  //color: Colors.blue,
                  child: TextField(
                    controller: _month,
                    decoration: InputDecoration(
                      labelText: 'Mes',
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 60,
                  height: 50,
                  //color: Colors.blue,
                  child: TextField(
                    controller: _year,
                    decoration: InputDecoration(
                      labelText: 'Any',
                    ),
                  ),
                ),
                /*TextField(
                  controller: _day,
                  decoration: InputDecoration(labelText: 'Dia'),
                ),*/
              ],
            ),*/
          ],
        ),
      ),*/
    );
  }
}

class DadesActivitat extends StatefulWidget {
  const DadesActivitat({
    Key key,
  }) : super(key: key);

  @override
  _DadesActivitatState createState() => _DadesActivitatState();
}

class _DadesActivitatState extends State<DadesActivitat> {
  TextEditingController controlTipus;
  TextEditingController controlEntrenador;
  TextEditingController controlSala;
  TextEditingController controlAssis;
  TextEditingController controlDia;
  TextEditingController controlMes;
  TextEditingController controlAny;
  TextEditingController controlHoraInici;
  TextEditingController controlMinInici;
  TextEditingController controlHoraFinal;
  TextEditingController controlMinFinal;

  @override
  void initState() {
    controlTipus = TextEditingController();
    controlEntrenador = TextEditingController();
    controlSala = TextEditingController();
    controlAssis = TextEditingController();
    controlDia = TextEditingController();
    controlMes = TextEditingController();
    controlAny = TextEditingController();
    controlHoraInici = TextEditingController();
    controlMinInici = TextEditingController();
    controlHoraFinal = TextEditingController();
    controlMinFinal = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controlTipus.dispose();
    controlEntrenador.dispose();
    controlSala.dispose();
    controlAssis.dispose();
    controlDia.dispose();
    controlMes.dispose();
    controlAny.dispose();
    controlHoraInici.dispose();
    controlMinInici.dispose();
    controlHoraFinal.dispose();
    controlMinFinal.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      width: 400,
      color: Colors.green[400],
      /*child: Column(children: [
        TextField(
          decoration: InputDecoration(labelText: 'Tipus Activitat'),
          controller: controlTipus,
          maxLines: 1,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Entrenador'),
          controller: controlEntrenador,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Sala'),
          controller: controlSala,
        ),
        Row(
          children: [
            Text('Màxim assistents:'),
            TextField(
              decoration: InputDecoration(labelText: '0'),
              controller: controlAssis,
            )
          ],
        ),
        Row(
          children: [
            Text('Data:'),
            TextField(
              decoration: InputDecoration(labelText: 'Dia'),
              controller: controlDia,
            ),
            SizedBox(width: 3),
            TextField(
              decoration: InputDecoration(labelText: 'Mes'),
              controller: controlMes,
            ),
            SizedBox(width: 3),
            TextField(
              decoration: InputDecoration(labelText: 'Any'),
              controller: controlAny,
            )
          ],
        ),
        Row(
          children: [
            Text('Inici:'),
            TextField(
              decoration: InputDecoration(labelText: '00'),
              controller: controlHoraInici,
            ),
            Text(' : '),
            TextField(
              decoration: InputDecoration(labelText: '00'),
              controller: controlMinInici,
            ),
          ],
        ),
        Row(
          children: [
            Text('Final:'),
            TextField(
              decoration: InputDecoration(labelText: '00'),
              controller: controlHoraFinal,
            ),
            Text(' : '),
            TextField(
              decoration: InputDecoration(labelText: '00'),
              controller: controlMinFinal,
            ),
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
      ]),*/
    );
  }
}

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
      /*child: ListView.builder(
        itemCount: 6, ////////////////////////////////////////////
        itemBuilder: (context, index) {
          //final item = llistaActInscrites[index];
          return noticia();
        },
      ),*/
    );
  }
}

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
      /*child: Column(children: [
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
      ]),*/
    );
  }
}
