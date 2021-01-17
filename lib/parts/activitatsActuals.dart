import 'package:flutter/material.dart';

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
