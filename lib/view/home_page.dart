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
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 96),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffbdf9eb),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 235,
                      height: 22,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Informe o código da sala"),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.pushNamed(context, '/designaReserva');
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 96),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/listaSala');
                },
                icon: Icon(Icons.send),
                label: Text('Cadastrar espaço'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  alerta() {}
}
