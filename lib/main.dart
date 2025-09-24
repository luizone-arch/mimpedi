import 'package:flutter/material.dart';
import './estilos/estilos.dart';

import 'usuario.dart';
void main() {
  runApp(const MyApp ());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Usuario u = Usuario(
        codigo: 1,
        login: 'mally123',
        nome: 'Mally',
        senha: '@senhaforte123'
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meus Dados:"),
        ), //
        body:
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome: ${u.nome}", style: EstilosApp.texto),
              Text("Código: ${u.codigo}", style: EstilosApp.texto),
              Text("Login: ${u.login}", style: EstilosApp.texto),
              Text("Senha: ${u.senha}", style: EstilosApp.texto)
            ],
          ),
        ),
        )
    );
  }
}