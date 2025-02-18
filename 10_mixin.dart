mixin Animal {
  
}

mixin Mamifero extends Animal {
  
}

mixin Ave extends Animal {
  
}

mixin Pez extends Animal {
  
}

mixin Volador {
  void volar() => print('estoy volando');
}

mixin Caminate {
  void caminar() => print('estoy Caminate');
}

mixin Nadador {
  void nadar() => print('estoy Nadador');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Caminate, Volador {}
class Gato extends Mamifero with Caminate {}

class Paloma extends Ave with Caminate, Volador{}
class Pato extends Ave with Caminate, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Volador, Nadador{}

void main() {
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.volar();
  batman.caminar();
  
  final manor = Pato();
  manor.volar();
  manor.caminar();
  manor.nadar();
}
