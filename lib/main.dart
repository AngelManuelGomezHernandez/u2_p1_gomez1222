import 'package:flutter/material.dart';
import 'package:u2_p1_gomez1222/pantallas1222/panel_pantalla1222.dart';

void main() => runApp(MiAppWalmart());

class MiAppWalmart extends StatelessWidget {
  const MiAppWalmart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gomez Walmart1222",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: PanelPantalla1222(),
    );
  }
}
