import 'dart:math';

import '../padres/figura.dart';

class TrianguloRectangulo extends Figura {
  double base;
  double altura;

  TrianguloRectangulo({
    super.posicionX = 0,
    super.posicionY = 0,
    required this.base,
    required this.altura,
  });

  @override
  double calcularArea() => (base * altura) / 2;

  @override
  double calcularPerimetro() {
    double hipotenusa = sqrt(pow(base, 2) + pow(altura, 2));
    return base + altura + hipotenusa;
  }
}
