void main() {
  // final wind
  
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print('wind: ${ chargePhone(windPlant) }');
  print('nuclear: ${ chargePhone(nuclearPlant) }');
}

enum PlantType {nuclear, wind, water}

double chargePhone( EnergyPlant plant ) {
  if( plant.energyLeft < 10) {
    throw Exception('No enough energy');
  }
  
  return plant.energyLeft - 10;
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
    });
  
  void counsumeEnergy(double amount);
}

//extends o implemnts
class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
    : super( energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void counsumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}


class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
   @override
  void counsumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5 );
  }
}