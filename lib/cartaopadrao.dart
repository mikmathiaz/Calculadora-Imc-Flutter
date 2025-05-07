import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({this.cor, this.filhoCartao, this.aoClicar, super.key});

  final Widget? filhoCartao;
  final Color? cor;
  final VoidCallback? aoClicar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoClicar,
      child: Container(
        child: filhoCartao,
        decoration: BoxDecoration(
            color: cor,
            borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.all(20.0),
      ),
    );
  }
}
