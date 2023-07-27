import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';


import 'Features/presentation/views/notes_view.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
