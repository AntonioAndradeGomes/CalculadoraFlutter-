import 'package:calculadora/models/memoria.dart';
import 'package:calculadora/widgets/display.dart';
import 'package:calculadora/widgets/teclado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculadora extends StatefulWidget {

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memoria memoria = new Memoria();

  _pressionado(String comando){
    setState(() {
      memoria.applyCommand(comando);
    });
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
    );//não gira a aplicação

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Column(
        children: <Widget>[
          new Display(memoria.value),
          new Teclado(
            _pressionado
          )
        ],
      ),
    );
  }
}