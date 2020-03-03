import 'package:calculadora/widgets/botao.dart';
import 'package:flutter/material.dart';

class LinhaBotoes extends StatelessWidget {
  final List<Botao> listaBotoes;

  LinhaBotoes(this.listaBotoes);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      flex: 1,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: this.listaBotoes.fold(<Widget>[], (lista, botao){
          lista.isEmpty ? lista.add(botao) : lista.addAll([const SizedBox(width: 1,), botao]);
          return lista;
        }),
      ),
    );
  }
}
