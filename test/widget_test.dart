import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/main.dart';

void main() {
  testWidgets('Verifica la presencia del título de la app', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final titleFinder = find.text('Flutter Demo Home Page');
    expect(titleFinder, findsOneWidget);
  });
}
