// lib/feeder_calculator.dart
class FeederCalculator {
  static const double gramsPerPortion = 100.0; 

  // **AGREGA la palabra clave 'static' aquí**
  static double calculateGramsForPortions(int portions) {
    if (portions < 0) return 0.0;
    return portions * gramsPerPortion;
  }
}