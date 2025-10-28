# 📄 Justificación de Herramientas y Límites de la Práctica

## 1. Justificación de Herramientas de Prueba

* **Pruebas Unitarias/Widget:** La elección de **`flutter_test`** y **`mocktail`** es obligatoria. Se justifica el uso de `mocktail` para asegurar el *aislamiento* del código (no tocar archivos, red, o BD).
* **Pruebas E2E (`integration_test`):** Se justifica porque es la **vía recomendada por Flutter** para E2E, se integra fácilmente con Firebase Test Lab y permite simular toques y gestos complejos.
* **Golden Tests (`golden_toolkit`):** Se eligió `golden_toolkit` por su capacidad de **probar múltiples dispositivos** (`multiScreenGolden`), que es crucial para apps Flutter.

## 2. Justificación de Análisis Estático (Lints)

* **Elección de `flutter_lints`:** Se incluyó `package:flutter_lints/flutter.yaml` para asegurar un **estándar de código básico y consistente**.
* **Reglas Adicionales:** Se incluyeron reglas específicas como **`avoid_print`** para garantizar que el CI **falle** si se dejan comandos de depuración en producción (evidencia de análisis estático).

## 3. Límites de las Herramientas y Configuraciones

* **Límites de `golden_toolkit`:** La precisión del *golden test* depende del entorno de CI. Se requiere configuración para manejar fuentes y *shaders* para evitar fallos inconsistentes (*diffs inconsistentes*).
* **Límites de CI/CD (E2E):** Las pruebas de integración se ejecutan en emuladores virtuales en CI. Para una verificación de *aceptación real* (E2E robusto), se necesitaría la ejecución en dispositivos reales (como ofrece **Firebase Test Lab**).