import '../padres/figura.dart';

class Rectangulo extends Figura {
  double base;
  double altura;

  Rectangulo({
    super.posicionX = 0,
    super.posicionY = 0,
    required this.base,
    required this.altura,
  });

  @override
  double calcularArea() => base * altura;

  @override
  double calcularPerimetro() => 2 * (base + altura);
}
