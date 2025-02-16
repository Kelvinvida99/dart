void main() {

  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  //dynamic == null
  // dynamic puede tomar cualquier valor
  dynamic errorMessage = 'Hola';
   errorMessage = true;
   errorMessage = [1,2,3,4];
   errorMessage = () => true;
  
  
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}
