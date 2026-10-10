import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Importación corregida con el nombre exacto de tu proyecto: "catalogo"
import 'package:catalogo/main.dart';

void main() {
  testWidgets('Prueba de carga y renderizado inicial de la App', (
    WidgetTester tester,
  ) async {
    // 1. Construye la aplicación y desencadena un frame.
    await tester.pumpWidget(const MyApp());

    // 2. Verifica que el título de la AppBar exista en la interfaz.
    expect(find.text('Catálogo de Cursos Tech'), findsOneWidget);

    // 3. Verifica que, al iniciar, la aplicación muestre el indicador de carga asíncrona.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // 4. Verifica que el texto de carga esté presente.
    expect(find.text('Sincronizando catálogo...'), findsOneWidget);
  });
}
