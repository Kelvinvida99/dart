void main() {
  
  final Map<String, dynamic> json = {
    'name': 'Ironman',
    'power': 'money',
    'isAlive': false,
  };
  
  final Hero wolverine = Hero(name: 'Logan', power: 'regeneracion', isAlive: true);
  final Hero ironman = Hero.fromJson(json);
  
  print(wolverine);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name, 
    required this.power, 
    required this.isAlive
    });
  
  Hero.fromJson( Map<String, dynamic> json )
      : name = json['name'] ?? 'Name not found',
        power = json['power'] ?? 'Power not found',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'yes': 'nop'}';
  }
}
