// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Implementação de uma estrutura visual básica
      backgroundColor: Colors.teal,
      body: SafeArea( //Delimita para não ultrapassar a margem de tela infinita
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,//Alinhamento dos filhos, eles terão uma separação igual entre cada um.
          children: [ //Children serve para adicionar outros widgets dentro de um.
            Container(
              width: 100,
              height: double.infinity,//Altura com tamanho infinito
              color: Colors.red,
              child: Text('Eae'),//Widget texto apresentado dentro do Container, e o Child serve para adicionar um widget a outro.
            ),
            Column(
              mainAxisSize: MainAxisSize.min, //A coluna ocupa apenas o espaço necessário dos filhos.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ],
            ),
            Container(
              width: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}