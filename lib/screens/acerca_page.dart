import 'package:flutter/material.dart';

class AcercaPage extends StatelessWidget {
  const AcercaPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Acerca de')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.info, size: 100, color: Colors.deepPurple),
              const SizedBox(height: 16),
              Text(
                'Mi Catálogo',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              const Text('Versión 1.0.0'),
              const SizedBox(height: 16),
              const Text(
                'Aplicación de catálogo de productos desarrollada como parte de la Práctica 04.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
}