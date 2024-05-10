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

void main() {
  Calculadora calculadora = Calculadora();

  double resultadoSuma = calculadora.suma(5, 3);
  print('La Suma es: $resultadoSuma');

  double resultadoResta = calculadora.resta(5, 3);
  print('La Resta es: $resultadoResta');

  double resultadoMultiplicacion = calculadora.multiplicacion(5, 3);
  print('La Multiplicación es: $resultadoMultiplicacion');

  double resultadoDivision = calculadora.division(5, 3);
  print('La Division es: $resultadoDivision');
}
