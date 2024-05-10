import 'package:fluter_dart_basico/ejemplosAbstract.dart';
import 'package:fluter_dart_basico/ejemplosHerencia.dart';
import 'package:fluter_dart_basico/ejemplosInterface.dart';
import 'package:fluter_dart_basico/ejemplosListas.dart';

void mainOld() {
  var objH = Heroe(nombre: 'David');
  print(objH.toString());

  var dd = new Gato();
  dd.comer();

  var ob = HeroeX("Samael");
  print(ob.toString());
}

void main() {
  InterfazEjemplo();
  ListasEjemplo();
}

//Ejemplo de Clase
class Heroe {
  String nombre;
  String? poder;

  Heroe({required this.nombre});

  String toString() {
    return 'Heroe: nombre: ${this.nombre}';
  }
}
