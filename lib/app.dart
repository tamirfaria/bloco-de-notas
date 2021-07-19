import 'package:bloco_de_notas/src/features/all_notes/all_notes_page.dart';
import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/features/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bloco de Notas | Raro Academy',
      debugShowCheckedModeBanner: false,
      home: AllNotesPage(),
    );
  }
}
