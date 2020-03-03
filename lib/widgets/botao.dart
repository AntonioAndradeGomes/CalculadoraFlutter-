import 'package:flutter/material.dart';

class Botao extends StatelessWidget {

  static const ESCURO = Color.fromRGBO(82, 82, 82, 1);
  static const PADRAO = Color.fromRGBO(112, 112, 112, 1);
  static const OPERACAO = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool grande;
  final Color color;
  final void Function(String) calback;

  Botao({@required this.text, this.grande = false, this.color = PADRAO,@required this.calback});
  Botao.operacao({@required this.text, this.grande = false, this.color = OPERACAO, @required this.calback});


  @override
  Widget build(BuildContext context) {
    return new Expanded(
      flex: grande ? 2 : 1,
      child: new RaisedButton(
        color: color,
        child: new Text(this.text, style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w200,
        ),),
        onPressed: () => calback(text),
      ),
    );
  }
}
