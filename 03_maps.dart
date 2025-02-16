void main() {

  final pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    }
  };
  
  print(pokemon);  
  print('Back: ${pokemon['sprites'][2]}');  
  print('Front: ${pokemon['sprites'][1]}');  
  
}
