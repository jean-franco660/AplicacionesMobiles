/*

Elaborar una clase abstracta operación con los métodos suma, resta y multiplicación. 
Luego, implementar en una clase derivada.

*/

abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
  double division(double a, double b);
}

class Calculadora extends Operacion {
  @override
  double suma(double a, double b) {
    return a + b;
  }

  @override
  double resta(double a, double b) {
    return a - b;
  }

  @override
  double multiplicacion(double a, double b) {
    return a * b;
  }

  @override
  double division(double a, double b) {
    return a / b;
  }
}

void TareaAbstract() {
  Calculadora calculadora = Calculadora();

  double resultadoSuma = calculadora.suma(8, 5);
  print('Suma: $resultadoSuma');

  double resultadoResta = calculadora.resta(8, 5);
  print('Resta: $resultadoResta');

  double resultadoMultiplicacion = calculadora.multiplicacion(8, 5);
  print('Multiplicación: $resultadoMultiplicacion');
}
