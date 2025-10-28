// test/golden_test.dart (VERSIÓN FINAL Y FUNCIONAL)
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart'; 
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:testing_demo/main.dart'; 

void main() {
  setUpAll(() async {
    // Es importante que esta línea esté, de lo contrario la prueba fallará
    await loadAppFonts(); 
  });

  // 1. Definir la lista de dispositivos que quieres probar
  final devicesToTest = [
    Device.phone, 
    Device.tabletPortrait, 
  ];

  // 2. Usar testGoldens SIN el parámetro 'devices'
  testGoldens(
    'Verifica que la pantalla inicial se renderiza correctamente en múltiples dispositivos',
    (tester) async {
      // 3. Crear el widget que se va a probar
      final widget = const MyHomePage(title: 'PetCare Feeder'); 
      
      // Carga el widget en el entorno de prueba
      await tester.pumpWidgetBuilder(widget); 
      
      // 4. Usar multiScreenGolden y PASARLE el parámetro devices (aquí SÍ es válido)
      await multiScreenGolden(
          tester, 
          'home_page_visual_regression', 
          devices: devicesToTest, // <--- El parámetro 'devices' es VÁLIDO aquí
      );
    },
    tags: ['golden'],
    // 5. REMUEVE la línea `devices: devicesToTest` de aquí.
    // La firma de testGoldens ya no lo acepta directamente.
  );
}