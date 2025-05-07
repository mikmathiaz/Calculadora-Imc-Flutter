import 'package:flutter/material.dart';
import 'constantes.dart';

class ContentIcon extends StatelessWidget {
  const ContentIcon({ required this.icone, required this.descricao,super.key,});

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 95.0,
        ),
        SizedBox(height:  15.0,
        ),
        Text(
          descricao,
          style: textoEstilo,
        ),
      ],
    );
  }
}
