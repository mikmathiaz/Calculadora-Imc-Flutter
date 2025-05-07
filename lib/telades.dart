import 'package:flutter/material.dart';
import 'cartaopadrao.dart';

class Resultados extends StatelessWidget {
  const Resultados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora de Massa Corporal'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:
          Container(child:
            Text('Resultados',
              style: resuStyle
            ),
              ),
          ),
          Expanded(
          flex: 5,
          child: CartaoPadrao(
            cor: Color(0xFF9E9E9E),
            filhoCartao: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'normal',
                ),
                Text('18.4', style: Imc2),
                Text('O seu Imc esta baixo',
                  textAlign: TextAlign.center,
                  style: corpo1,),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}

const resuStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const resuText = TextStyle(
  color: Colors.green,
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const Imc2 = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const corpo1 = TextStyle(
fontSize: 22.0,
  color: Colors.black,
);