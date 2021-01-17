import 'package:flutter/material.dart';

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

