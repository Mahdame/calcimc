import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int? height;
  final int? weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String? getResult() {
    if (_bmi < 18.5) {
      return 'MAGREZA';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'NORMAL';
    }
    else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'SOBREPESO';
    }
    else if (_bmi >= 30 && _bmi <= 39.9) {
      return 'OBESIDADE';
    }
    else if (_bmi >= 40) {
      return 'OBESIDADE GRAVE';
    }
  }

  String? getDescription() {
    if (_bmi < 18.5) {
      return 'Seu peso está muito abaixo do esperado para suas medidas!';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Seu peso está esperado para suas medidas!';
    }
    else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Seu peso está muito acima do esperado para suas medidas!';
    }
    else if (_bmi >= 30 && _bmi <= 39.9) {
      return 'Seu peso está perigosamente acima do esperado para suas medidas!';
    }
    else if (_bmi >= 40) {
      return 'Atenção! Procure orientação médica, faça exercícios, diminua a ingestão de calorias!';
    }
  }
}
