import 'dart:io';

import 'entidades/hijas/circulo.dart';
import 'entidades/hijas/rectangulo.dart';
import 'entidades/hijas/trianguloRectangulo.dart';
import 'entidades/padres/figura.dart';

void main() {
  iniciarAplicacion();
}

void iniciarAplicacion() {
  while (true) {
    mostrarMenu();
    final opcion = leerEntrada('\n Seleccione una opción: ');

    switch (opcion) {
      case '1':
        procesarCirculo();
        break;
      case '2':
        procesarRectangulo();
        break;
      case '3':
        procesarTriangulo();
        break;
      case '4':
        print('\nSaliendo del programa...');
        return;
      default:
        print('\n❌ Opción inválida.\n');
    }
  }
}

void mostrarMenu() {
  print('\n===== CALCULADORA DE FIGURAS =====');
  print('1. Círculo');
  print('2. Rectángulo');
  print('3. Triángulo Rectángulo');
  print('4. Salir');
}

String leerEntrada(String mensaje) {
  stdout.write(mensaje);
  return stdin.readLineSync() ?? '';
}

double leerDouble(String mensaje) {
  while (true) {
    stdout.write(mensaje);
    final input = stdin.readLineSync();

    final valor = double.tryParse(input ?? '');
    if (valor != null) return valor;

    print('!!!  Entrada inválida. Intente nuevamente.');
  }
}

void pausar() {
  stdout.write('\nPresiona ENTER para volver al menú...');
  stdin.readLineSync();
}

void procesarCirculo() {
  print('\n===== CALCULANDO CIRCULOS =====');
  final radio = leerDouble('Ingrese el radio: ');
  final figura = Circulo(radio: radio);

  mostrarResultados(figura);
}

void procesarRectangulo() {
  print('\n===== CALCULANDO RECTANGULOS =====');
  final base = leerDouble('Ingrese la base: ');
  final altura = leerDouble('Ingrese la altura: ');
  final figura = Rectangulo(base: base, altura: altura);

  mostrarResultados(figura);
}

void procesarTriangulo() {
  print('\n===== CALCULANDO TRIANGULOS RECTANGULOS =====');
  final base = leerDouble('Ingrese la base: ');
  final altura = leerDouble('Ingrese la altura: ');
  final figura = TrianguloRectangulo(base: base, altura: altura);

  mostrarResultados(figura);
}

void mostrarResultados(Figura figura) {
  print('\n📐 Resultados:');
  print('Área: ${figura.calcularArea().toStringAsFixed(2)}');
  print('Perímetro: ${figura.calcularPerimetro().toStringAsFixed(2)}\n');

  pausar();
}
