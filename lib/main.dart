import 'package:coworking/view/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('pt', 'BR'),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        //'/detalhe': (context) => const Detalhe()
      },
    );
  }
}
/*
dica interessante sobre alinhamento flutter:
https://www.youtube.com/watch?v=SwNFqN6IekQ
*/
