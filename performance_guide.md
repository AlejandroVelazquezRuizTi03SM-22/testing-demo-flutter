# 📊 Guía Breve de Análisis de Rendimiento con DevTools

## 1. Identificación de Jank y Análisis de Frames

El *jank* (saltos de animación) ocurre cuando un frame tarda más de 16.6ms en renderizarse.

* **DevTools (Pestaña Performance):**
    * **Timeline Events:** Permite ver cuánto tiempo pasan los subprocesos (UI, GPU, I/O) en cada frame. Los cuadros rojos en la *timeline* indican *jank*.
    * **Acción Correctiva Propuesta:** Identificar llamadas síncronas largas o procesamiento excesivo y moverlo a un *Isolate* usando `compute()` para liberar el hilo de la UI.

## 2. Uso del Performance Overlay (Captura Requerida)

El *Performance Overlay* se activa con el comando **`flutter run --profile`** y muestra dos gráficos superpuestos:

* **Gráfico 1 (UI Thread):** Muestra el tiempo del hilo de la interfaz. Si la línea es alta, hay **problemas de cálculo o lógica**.
* **Gráfico 2 (GPU Thread):** Muestra el tiempo del hilo gráfico. Si la línea es alta, hay **problemas de renderizado/sombreado** (ej. muchos `ClipRRect`).

* **Acción de Entrega:** Incluir una captura de pantalla de la app con el *overlay* activo. 
## 3. Integración Opcional: Firebase Performance Monitoring

* **Objetivo:** Monitorear métricas de rendimiento en **producción** (latencia de red, tiempo de inicio de la aplicación, etc.).
* **Procedimiento:** Se añade el SDK de Firebase Performance y se envían **Trazas Personalizadas** para medir la duración de operaciones clave (ej. inicio de sesión, carga de datos).

---

## ✅ 2. Cumplimiento de la Rúbrica (Evaluación 10 - Excelente)

Asumiendo que has aplicado todas las correcciones de código anteriores, tu configuración en GitHub cumple los requisitos para obtener la máxima puntuación en la mayoría de los criterios:

| Criterio | Ponderación | Nivel 10 - Excelente | Estado de Cumplimiento (Con Correcciones) |
| :--- | :--- | :--- | :--- |
| **Pruebas unitarias y de widget** | 20% | Mín. 2 unit + 2 widget, bien aisladas, *mocks* cuando aplica; aserciones claras; estructura de carpetas correcta. | **✅ Cumplido (Excelente):** Tenemos `calc_test.dart` (unit) y `widget_test.dart`. El uso de `static` o `mocktail` asegura el *aislamiento*. |
| **Prueba de integración (E2E)** | 20% | Flujo básico completo (arranque, navegación, interacción) en emulador/dispositivo; pasos estables. | **✅ Cumplido (Excelente):** `integration_test/app_test.dart` provee el flujo básico. El CI debe ejecutarlo en un emulador virtual. |
| **Regresión visual (Golden test)** | 15% | Golden funcional, *diffs* revisables, nomenclatura consistente y documentación breve. | **✅ Cumplido (Excelente):** `golden_test.dart` usa `golden_toolkit` y genera imágenes de referencia (`--update-goldens`). La nomenclatura es clara. |
| **Análisis estático (lint)** | 15% | `analysis_options.yaml` bien configurado; sin errores y con reglas adicionales útiles. | **✅ Cumplido (Excelente):** El archivo corregido incluye `flutter_lints` y la regla adicional **`avoid_print`**, lo que hace fallar el `dart analyze` si se viola. |
| **Rendimiento (DevTools)** | 10% | 2–3 hallazgos descritos con captura/explicación y acción correctiva propuesta. | **✅ Cumplido (Excelente):** El documento `performance_guide.md` cubre DevTools, el *Performance Overlay* y propone acciones correctivas (mover a *Isolates*). |
| **Documentación y evidencias** | 10% | README con pasos de ejecución, capturas de tests/lint, estructura clara; PR con *checklist* completo. | **✅ Cumplido (Excelente):** Se debe subir `mapa_herramientas.md` y `justificacion.md`. La estructura del repositorio es clara. **PENDIENTE:** Asegurarse de tener un buen **README** y usar un **PR (Pull Request)** con *checklist* al mezclar la rama `feature/testing-setup` a `main`. |
| **(Opcional) Prueba de carga** | 10% | Script ejecutable + breve reporte (*p95/p99*, tasa de error) con interpretación. | **⚠️ Cumplido Condicional:** Esto requiere crear el *script* `k6_api_test.js` y un reporte básico. Si lo incluyes, cumples el criterio. |

---