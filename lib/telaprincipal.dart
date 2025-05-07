import 'package:flutter/material.dart';
import 'conteudoicon.dart';
import 'constantes.dart';
import 'cartaopadrao.dart';
import 'telades.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Genero{
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

      Genero? genero;
      int altura = 180;
      int peso = 60;
      int idade = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF323131),
        title: Text('Calculadora de IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: CartaoPadrao(
                aoClicar: (){
                  setState(() {
                    genero = Genero.masculino;
                  });
                },
                  cor: genero == Genero.masculino ? corAtiva : corInativa,
                  filhoCartao: ContentIcon(
                    icone: FontAwesomeIcons.mars,
                    descricao: 'Masculino',
                  ),
              ),
              ),
              Expanded(child: CartaoPadrao(
                aoClicar: (){
                  setState(() {
                    genero = Genero.feminino;
                  });
                },
                  cor: genero == Genero.feminino ? corAtiva : corInativa,
                  filhoCartao: ContentIcon(
                      icone: FontAwesomeIcons.venus,
                      descricao: 'Feminino',
                  ),
              ),
              ),
            ],
            ),
          ),
          Expanded(
              child: CartaoPadrao(
                  cor: Color(0xFF9E9E9E),
                      filhoCartao: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Altura',
                         style: textoEstilo,
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(altura.toString(),
                          style: numTextoEstilo,
                          ),
                          Text(
                              'cm',
                            style: textoEstilo,
                          ),
                        ],
                       ),
                       Slider(
                         activeColor: Color(0xFFFF5822),
                         inactiveColor: Color(0xFF8D8E98),
                         onChanged: (double novoValor){
                           setState(() {
                             altura = novoValor.round();
                           });
                         },
                         value: altura.toDouble(),
                         min: 120,
                         max: 220,
                       ),
                     ],
                 ),
              ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                  child: CartaoPadrao(
                      cor: Color(0xFF9E9E9E),
                      filhoCartao: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'peso',
                            style: textoEstilo,
                          ),
                          Text(
                              peso.toString(),
                             style: numTextoEstilo,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BotaoArredondado(
                                icone: FontAwesomeIcons.minus,
                                aoClicar: (){
                                  setState(() {
                                    peso--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              BotaoArredondado(
                                icone: FontAwesomeIcons.plus,
                                aoClicar: (){
                                  setState(() {
                                    peso++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
              ),
              Expanded(
                  child: CartaoPadrao(
                      cor: Color(0xFF9E9E9E),
                     filhoCartao: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'idade',
                           style: textoEstilo,
                         ),
                         Text(
                           idade.toString(),
                           style: numTextoEstilo,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             BotaoArredondado(
                                 icone: FontAwesomeIcons.minus,
                                 aoClicar: (){
                                   setState(() {
                                     idade--;
                                   });
                                 },
                             ),
                             SizedBox(
                               width: 10.0,
                             ),
                             BotaoArredondado(
                                 icone: FontAwesomeIcons.plus,
                                 aoClicar: (){
                                   setState(() {
                                     idade++;
                                   });
                                 },
                             ),
                           ],
                         ),
                       ],
                     ),
                  ),
              ),
            ],
          ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Resultados(),),
              );
            },
            child: Container(
              color: Color(0xFFFF5822),
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: 80.0,
              child: Center(
                child: Text(
                  'calcular',
                  style: botaogrande,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BotaoArredondado extends StatelessWidget {
  const BotaoArredondado({required this.aoClicar,required this.icone, super.key});

  final IconData icone;
  final VoidCallback? aoClicar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icone),
      onPressed: aoClicar,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF7E7E7E),
    );
  }
}
