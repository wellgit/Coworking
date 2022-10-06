import 'package:coworking/view/designa_reserva.dart';
import 'package:coworking/view/reserva_sala.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Coworking",
        textAlign: TextAlign.center,
      )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Informe o código da sala',
                  ),
                  autofocus: true,
                )),
                IconButton(
                    onPressed: alerta(),
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.lightGreen,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ReservaSala())),
              child: Text('Cadastrar Espaço'),
            ),
          )
        ],
      ),
    );
  }

  alerta() {}
}
