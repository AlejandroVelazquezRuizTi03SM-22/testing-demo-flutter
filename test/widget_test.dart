// test/widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/main.dart'; // El main.dart de tu proyecto demo

void main() {
  testWidgets('Verifica la presencia del título de la app', (WidgetTester tester) async {
    // 1. Inflar el widget (construir la app)
    await tester.pumpWidget(const MyApp()); // Asume que tu app inicial es MyApp

    // 2. Esperar que se encuentre el texto.
    final titleFinder = find.text('Flutter Demo Home Page');

    // 3. Afirmar (ASSERT) que se encontró exactamente un widget con ese texto.
    expect(titleFinder, findsOneWidget);
  });
}