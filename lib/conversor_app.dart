import 'package:flutter/material.dart';
import 'package:sesion_1/conversor_pagina_principal.dart';

class ConversorApp extends StatelessWidget {
  const ConversorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2
    return MaterialApp(
      title: "Conversor App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // 3
      home: const ConversorPaginaPrincipal(),
    );
  }
}
