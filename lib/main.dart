import 'package:flutter/material.dart';
import 'screens/inicio_page.dart';
import 'screens/materias_page.dart'; 

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const MenuPage(),
      );
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Práctica 04')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const InicioPage()),
                ),
                icon: const Icon(Icons.shopping_bag),
                label: const Text('Catálogo de Productos'),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MateriasPage()),
                ),
                icon: const Icon(Icons.book),
                label: const Text('Catálogo de Materias'),
              ),
            ],
          ),
        ),
      );
}