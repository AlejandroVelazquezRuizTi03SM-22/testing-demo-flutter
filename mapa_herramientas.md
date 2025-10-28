# 🗺️ Mapa de Tipos de Prueba, Objetivos y Herramientas

| Tipo de Prueba | ¿Qué Valida? | Herramienta(s) Sugerida(s) | Cómo se Corre en Local/CI |
| :--- | :--- | :--- | :--- |
| **Unitarias** | Lógica pura de clases y métodos (ej. `FeederCalculator`). | `flutter_test`, `mocktail` (para aislar dependencias). | `flutter test test/calc_test.dart` |
| **Widget** | Comportamiento de widgets sin la app completa (ej. renderizado, inputs). | `flutter_test` (`testWidgets`). | `flutter test test/widget_test.dart` |
| **Integración (E2E)** | Flujo completo de usuario en emulador/dispositivo (arranque, navegación). | `integration_test` (sustituye a `flutter_driver`). | `flutter test integration_test/app_test.dart` |
| **Regresión Visual (Golden)** | Evita cambios visuales no intencionales entre versiones. | `golden_toolkit`. | `flutter test --update-goldens` (local); `flutter test` (CI) |
| **Análisis Estático (Lint)** | Consistencia de código, estilo, errores comunes sin ejecución. | `dart analyze`, `analysis_options.yaml`, `flutter_lints`. | `dart analyze` o `flutter analyze` |
| **Rendimiento** | *Jank*, latencia, tiempos de frame, *network*. | DevTools (Performance), Firebase Performance. | Local: DevTools; Producción: Firebase SDK. |
| **Esfuerzo/Carga (Opc.)** | Resistencia, capacidad y límites del API de backend. | `k6` / `JMeter`. | `k6 run k6_api_script.js` (en terminal externa). |