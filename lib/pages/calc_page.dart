import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController peso = TextEditingController();
  final TextEditingController altura = TextEditingController();
  String? resultado = '';
  String? errorText;

  void calcular() {
    double valorPeso = double.parse(peso.text);
    double valorAltura = double.parse(altura.text) / 100;
    double imc = (valorPeso / (valorAltura * valorAltura));

    if (imc < 18.5) {
      resultado = 'Magreza';
    } else if (imc >= 18.5 && imc <= 24.9) {
      resultado = 'Normal';
    } else if (imc >= 25.0 && imc <= 29.9) {
      resultado = 'Sobrepeso';
    } else if (imc >= 30.0 && imc <= 39.9) {
      resultado = 'Obesidade';
    } else if (imc >= 40.0) {
      resultado = 'Obesidade Grave';
    }
  }

  void limpaCampos() {
    peso.text = '';
    altura.text = '';
    resultado = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora de IMC',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontFamily: 'Pacifico'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
