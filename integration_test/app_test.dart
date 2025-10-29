// integration_test/app_test.dart
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/main.dart' as app;

void main() {
  // Necesario para tests de integración
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Arranca la app y muestra el home', (WidgetTester tester) async {
    // Lanza tu app
    app.main();
    await tester.pumpAndSettle();

    // Ajusta el texto a lo que realmente muestra tu home
    expect(find.text('Flutter Demo Home Page'), findsOneWidget);
  });
}
