import 'dart:math';

// ============================================
// MODELO DE DATOS
// ============================================
class Course {
  final String nombre;
  final String docente;
  final int duracion; // Almacenado como entero
  final String nivel;
  final double precio; // Almacenado como double
  final bool publicado; // Almacenado como booleano

  Course({
    required this.nombre,
    required this.docente,
    required this.duracion,
    required this.nivel,
    required this.precio,
    required this.publicado,
  });
}

// ============================================
// COLECCIÓN TIPADA (Mínimo 4 cursos)
// ============================================
final List<Course> coursesData = [
  Course(
    nombre: 'Desarrollo Móvil con Flutter y Dart',
    docente: 'Ing. Alejandro Márquez',
    duracion: 40,
    nivel: 'Intermedio',
    precio: 89.99,
    publicado: true,
  ),
  Course(
    nombre: 'Introducción a la Programación',
    docente: 'Ana Torres',
    duracion: 20,
    nivel: 'Básico',
    precio: 49.50,
    publicado: true,
  ),
  Course(
    nombre: 'Arquitectura de Software Avanzada',
    docente: 'Luis Pérez',
    duracion: 55,
    nivel: 'Avanzado',
    precio: 120.00,
    publicado: true,
  ),
  Course(
    nombre: 'Diseño UI/UX Orientado a Móviles',
    docente: 'Sofía Ramírez',
    duracion: 15,
    nivel: 'Básico',
    precio: 35.00,
    publicado: false,
  ),
  Course(
    nombre: 'Bases de Datos y Firebase',
    docente: 'María Gómez',
    duracion: 25,
    nivel: 'Intermedio',
    precio: 60.00,
    publicado: true,
  ),
  Course(
    nombre: 'Gestión de Estado (Riverpod & Bloc)',
    docente: 'Carlos Ruiz',
    duracion: 30,
    nivel: 'Avanzado',
    precio: 75.00,
    publicado: true,
  ),
];

// ============================================
// FUNCIÓN ASÍNCRONA (Simulación de API)
// ============================================
/// Utiliza Future, async y await para simular una consulta remota.
Future<List<Course>> loadCourses() async {
  // Genera un retraso aleatorio entre 1 y 2 segundos (1000 a 2000 ms)
  final delay = 1000 + Random().nextInt(1001);
  await Future.delayed(Duration(milliseconds: delay));
  return coursesData;
}
