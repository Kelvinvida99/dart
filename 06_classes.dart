void main() {

  final Hero wolverine = Hero(name: 'Logan', power: 'regeneracion');
  
  print(wolverine);
  print(wolverine.name);
}

class Hero {
  String name;
  String power;
  
  Hero({required this.name, required this.power});
  
  @override
  String toString() {
    return '$name - $power';
  }
  
 // Hero(String pName, String pPower) 
 //     : name = pName,
 //       power = pPower;
  
}