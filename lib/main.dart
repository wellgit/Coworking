import 'package:coworking/view/cadastro_empresa.dart';
import 'package:coworking/view/cadastro_sala.dart';
import 'package:coworking/view/cancela_reserva.dart';
import 'package:coworking/view/designa_reserva.dart';
import 'package:coworking/view/detalhe_sala.dart';
import 'package:coworking/view/home_page.dart';
import 'package:coworking/view/lista_sala.dart';
import 'package:coworking/view/login.dart';
import 'package:coworking/view/reserva_sala.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/reserva': (context) => ReservaSala(),
        '/cancela': (context) => CancelaReserva(),
        '/login': (context) => Login(),
        '/cadastroEmpresa': (context) => CadastroEmpresa(),
        '/cadastroSala': (context) => CadastroSala(),
        '/listaSala': (context) => ListaSala(),
        '/detalheSala': (context) => DetalheSala(),
        '/designaReserva': (context) => DesignaReserva(),
        //'/detalhe': (context) => const Detalhe()
      },
    );
  }
}
/*
dica interessante sobre alinhamento flutter:
https://www.youtube.com/watch?v=SwNFqN6IekQ
dica sobre listview
https://youtu.be/L3NJkkOC4Ko
*/
