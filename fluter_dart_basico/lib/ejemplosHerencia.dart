abstract class Personaje {
  String? poder;
  String nombre;

  Personaje(this.nombre);

  String toString() {
    return '$nombre - $poder';
  }
}

class HeroeX extends Personaje {
  int valentia = 100;

  HeroeX(String nombre) : super(nombre);
}
