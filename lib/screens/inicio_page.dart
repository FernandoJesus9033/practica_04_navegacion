import 'package:flutter/material.dart';
import '../models/producto.dart';
import '../widgets/producto_card.dart';
import 'detalle_page.dart';
import 'acerca_page.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  static const productos = [
    Producto(
      nombre: 'Teclado',
      precio: 550,
      descripcion: 'Teclado para computadora',
    ),
    Producto(
      nombre: 'Mouse',
      precio: 320,
      descripcion: 'Mouse óptico',
    ),
    Producto(
      nombre: 'Audífonos',
      precio: 780,
      descripcion: 'Audífonos inalámbricos',
    ),
    Producto(
      nombre: 'Monitor',
      precio: 2500,
      descripcion: 'Monitor LED 24 pulgadas',
    ),
    Producto(
      nombre: 'Webcam',
      precio: 890,
      descripcion: 'Cámara web HD',
    ),
    Producto(
      nombre: 'Micrófono',
      precio: 1200,
      descripcion: 'Micrófono condensador',
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo'),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AcercaPage(),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: productos
              .map(
                (p) => ProductoCard(
                  producto: p,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetallePage(producto: p),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      );
}