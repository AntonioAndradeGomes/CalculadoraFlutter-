import 'package:calculadora/widgets/botao.dart';
import 'package:calculadora/widgets/linha_botoes.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  final void Function(String) calback;

  Teclado(this.calback);
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height / 1.4,
      child: new Column(
        children: <Widget>[
          new LinhaBotoes([
            new Botao(
              text: 'AC',
              color: Botao.ESCURO,
              grande: true,
              calback: calback,
            ),
            new Botao(
              text: '%',
              color: Botao.ESCURO,
              calback: calback,
            ),
            new Botao.operacao(
              text: '/',
              calback: calback,
            ),
          ]),
          const SizedBox(
            height: 1,
          ),
          new LinhaBotoes([
            new Botao(
              text: '7',
              calback: calback,
            ),
            new Botao(
              text: '8',
              calback: calback,
            ),
            new Botao(
              text: '9',
              calback: calback,
            ),
            new Botao.operacao(
              text: 'X',
              calback: calback,
            ),
          ]),
          const SizedBox(
            height: 1,
          ),
          new LinhaBotoes([
            new Botao(
              text: '4',
              calback: calback,
            ),
            new Botao(
              text: '5',
              calback: calback,
            ),
            new Botao(
              text: '6',
              calback: calback,
            ),
            new Botao.operacao(
              text: '-',
              calback: calback,
            ),
          ]),
          const SizedBox(
            height: 1,
          ),
          new LinhaBotoes([
            new Botao(
              text: '1',
              calback: calback,
            ),
            new Botao(
              text: '2',
              calback: calback,
            ),
            new Botao(
              text: '3',
              calback: calback,
            ),
            new Botao.operacao(
              text: '+',
              calback: calback,
            ),
          ]),
          const SizedBox(
            height: 1,
          ),
          new LinhaBotoes([
            new Botao(
              text: '0',
              grande: true,
              calback: calback,
            ),
            new Botao(
              text: '.',
              calback: calback,
            ),
            new Botao.operacao(
              text: '=',
              calback: calback,
            ),
          ]),
        ],
      ),
    );
  }
}
