import 'dart:math';

import '../padres/figura.dart';

class Circulo extends Figura {
  double radio;

  Circulo({
    super.posicionX = 0,
    super.posicionY = 0,
    required this.radio,
  });

  @override
  double calcularArea() =>pi * pow(radio, 2);

  @override
  double calcularPerimetro() => 2 * pi * radio;
}
