import 'package:flutter/material.dart';

import '../models/materia.dart';
import '../widgets/materia_card.dart';
import 'detalle_materia_page.dart';

class MateriasPage extends StatelessWidget {
  const MateriasPage({super.key});

  static const materias = [
    Materia(
      nombre: 'Tópicos de Programación Móvil',
      semestre: 7,
      creditos: 5,
      descripcion: 'Desarrollo de aplicaciones móviles con Flutter',
    ),
    Materia(
      nombre: 'Programación Web',
      semestre: 6,
      creditos: 4,
      descripcion: 'Desarrollo de aplicaciones web con HTML, CSS y JavaScript',
    ),
    Materia(
      nombre: 'Bases de Datos',
      semestre: 5,
      creditos: 5,
      descripcion: 'Diseño e implementación de bases de datos relacionales',
    ),
    Materia(
      nombre: 'Ingeniería de Software',
      semestre: 6,
      creditos: 4,
      descripcion: 'Metodologías y procesos de desarrollo de software',
    ),
    Materia(
      nombre: 'Redes de Computadoras',
      semestre: 5,
      creditos: 4,
      descripcion: 'Fundamentos de redes y protocolos de comunicación',
    ),
    Materia(
      nombre: 'Inteligencia Artificial',
      semestre: 7,
      creditos: 5,
      descripcion: 'Algoritmos y técnicas de inteligencia artificial',
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Catálogo de Materias')),
    body: ListView(
      padding: const EdgeInsets.all(12),
      children: materias
          .map(
            (m) => MateriaCard(
              materia: m,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetalleMateriaPage(materia: m),
                ),
              ),
            ),
          )
          .toList(),
    ),
  );
}
