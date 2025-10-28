import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:testing_demo/main.dart';

void main() {
  setUpAll(() async {
    await loadAppFonts();
  });

  final devicesToTest = [
    Device.phone,
    Device.tabletPortrait,
  ];

  testGoldens(
    'Verifica que la pantalla inicial se renderiza correctamente en múltiples dispositivos',
    (tester) async {
      final widget = const MyHomePage(title: 'PetCare Feeder');
      await tester.pumpWidgetBuilder(widget);
      await multiScreenGolden(
        tester,
        'home_page_visual_regression',
        devices: devicesToTest,
      );
    },
    tags: ['golden'],
  );
}
