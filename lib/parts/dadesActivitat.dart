import 'package:flutter/material.dart';

class DadesActivitat extends StatefulWidget {
  const DadesActivitat({
    Key key,
  }) : super(key: key);
 
  @override
  _DadesActivitatState createState() => _DadesActivitatState();
}
 
class _DadesActivitatState extends State<DadesActivitat> {
  TextEditingController _controlTipus;
  TextEditingController _controlEntrenador;
  TextEditingController _controlSala;
  TextEditingController _controlAssis;
  TextEditingController _controlMaxAssis;
  TextEditingController _controlDia;
  TextEditingController _controlMes;
  TextEditingController _controlAny;
  TextEditingController _controlHoraInici;
  TextEditingController _controlHoraFinal;
 
  @override
  void initState() {
    _controlTipus = TextEditingController();
    _controlEntrenador = TextEditingController();
    _controlSala = TextEditingController();
    _controlAssis = TextEditingController();
    _controlMaxAssis = TextEditingController();
    _controlDia = TextEditingController();
    _controlMes = TextEditingController();
    _controlAny = TextEditingController();
    _controlHoraInici = TextEditingController();
    _controlHoraFinal = TextEditingController();
    super.initState();
  }
 
  @override
  void dispose() {
    _controlTipus.dispose();
    _controlEntrenador.dispose();
    _controlSala.dispose();
    _controlAssis.dispose();
    _controlMaxAssis.dispose();
    _controlDia.dispose();
    _controlMes.dispose();
    _controlAny.dispose();
    _controlHoraInici.dispose();
    _controlHoraFinal.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Editar Activitats"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 60,
                child: TextField(
                  controller: _controlTipus,
                  decoration: InputDecoration(labelText: 'Tipus Activitat'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 200,
                height: 60,
                child: TextField(
                  controller: _controlEntrenador,
                  decoration: InputDecoration(labelText: 'Entrenador'),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 200,
                height: 60,
                child: TextField(
                  controller: _controlSala,
                  decoration: InputDecoration(labelText: 'Sala'),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    child: TextField(
                      controller: _controlAssis,
                      decoration: InputDecoration(labelText: 'Assistents'),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 150,
                    height: 60,
                    child: TextField(
                      controller: _controlMaxAssis,
                      decoration:
                          InputDecoration(labelText: 'Màxim assistents'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 60,
                    child: TextField(
                      controller: _controlDia,
                      decoration: InputDecoration(labelText: 'Dia'),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 50,
                    height: 60,
                    child: TextField(
                      controller: _controlMes,
                      decoration: InputDecoration(labelText: 'Mes'),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 50,
                    height: 60,
                    child: TextField(
                      controller: _controlAny,
                      decoration: InputDecoration(labelText: 'Any'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    child: TextField(
                      controller: _controlHoraInici,
                      decoration: InputDecoration(labelText: 'Hora Inici'),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 100,
                    height: 60,
                    child: TextField(
                      controller: _controlHoraFinal,
                      decoration: InputDecoration(labelText: 'Hora Final'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
 
    /*Container(
      width: 400,
      color: Colors.green[400],
      child: Column(
        children: [
          Container(
            width: 100,
            height: 60,
            child: TextField(
              controller: _controlTipus,
              decoration: InputDecoration(labelText: 'Tipus Activitat'),
            ),
          )
        ],
      ),
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
    );*/
  }
}
