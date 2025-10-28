// test/calc_test.dart
import 'package:flutter_test/flutter_test.dart';
// **MUY IMPORTANTE**: Revisa que este path sea correcto
import 'package:testing_demo/feeder_calculator.dart'; 

void main() {
  group('FeederCalculator', () {
    
    // CASO DE PRUEBA 1: Cálculo normal
    test('Calcula la cantidad correcta para 3 porciones', () {
      // ARRANGE
      const int portions = 3;
      const double expectedGrams = 300.0;

      // ACT
      // Accede al método estático correctamente
      final result = FeederCalculator.calculateGramsForPortions(portions); 

      // ASSERT
      expect(result, expectedGrams);
    });

    // CASO DE PRUEBA 2: Manejo de valores límite (Aquí estaba el error de sintaxis)
    test('Retorna 0 para porciones negativas', () {
      // ARRANGE
      const int negativePortions = -1; // Usa un nombre de variable claro
      const double expectedGrams = 0.0;

      // ACT
      // Llama a la función con el valor negativo
      final result = FeederCalculator.calculateGramsForPortions(negativePortions); 

      // ASSERT
      expect(result, expectedGrams);
    });
  });
}