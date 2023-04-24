import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuarta Pantalla (Tab Bar)',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Pagina4(),
    );
  }
}

class Pagina4 extends StatefulWidget {
  const Pagina4({super.key});

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<Pagina4> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Aviones", icon: Icon(Icons.flight)),
              Tab(text: "Trenes", icon: Icon(Icons.train)),
              Tab(text: "Restaurantes", icon: Icon(Icons.restaurant)),
            ],
          ),
          title: const Text('Flutter TabBar'),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("Aviones"),
            ),
            Center(
              child: Text("Trenes"),
            ),
            Center(
              child: Text("Restaurantes"),
            ),
          ],
        ),
      ),
    );
  }
}
