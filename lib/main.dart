import 'package:flutter/material.dart';
import 'telaprincipal.dart';

void main() {
  runApp(const Calculadora());
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF323131),
      ),
      home: TelaPrincipal()
    );
  }
}


