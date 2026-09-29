import 'package:flutter/material.dart';

import '../models/materia.dart';

class DetalleMateriaPage extends StatelessWidget {
  final Materia materia;

  const DetalleMateriaPage({super.key, required this.materia});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(materia.nombre)),
    body: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.menu_book, size: 100, color: Colors.deepPurple),
          const SizedBox(height: 16),
          Text(
            materia.nombre,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          _InfoRow(
            icon: Icons.calendar_today,
            label: 'Semestre',
            value: '${materia.semestre}',
          ),
          const SizedBox(height: 8),
          _InfoRow(
            icon: Icons.star,
            label: 'Créditos',
            value: '${materia.creditos}',
          ),
          const SizedBox(height: 16),
          Text('Descripción', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(materia.descripcion),
        ],
      ),
    ),
  );
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, size: 20),
      const SizedBox(width: 8),
      Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}
