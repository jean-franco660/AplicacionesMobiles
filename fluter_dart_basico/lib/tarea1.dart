abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
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
}

void ejemploDeAbstract() {
  Calculadora calculadora = Calculadora();

  double resultadoSuma = calculadora.suma(5, 3);
  print('Suma: $resultadoSuma'); // Output: Suma: 8.0
  
  double resultadoResta = calculadora.resta(5, 3);
  print('Resta: $resultadoResta'); // Output: Resta: 2.0
  
  double resultadoMultiplicacion = calculadora.multiplicacion(5, 3);
  print('Multiplicación: $resultadoMultiplicacion'); // Output: Multiplicación: 15.0
}
