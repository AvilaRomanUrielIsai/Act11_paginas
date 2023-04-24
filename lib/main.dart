import 'package:flutter/material.dart';
import 'package:avila/pagina1.dart';
import 'package:avila/pagina2.dart';
import 'package:avila/pagina3.dart';
import 'package:avila/pagina4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Pagina1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Pagina2(),
      '/tercera': (context) => const Pagina3(),
      '/cuarta': (context) => const Pagina4(),
    },
  ));
}
