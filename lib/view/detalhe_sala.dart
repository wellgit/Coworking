import 'package:coworking/model/setor.dart';
import 'package:flutter/material.dart';

class DetalheSala extends StatefulWidget {
  DetalheSala({Key? key}) : super(key: key);

  @override
  State<DetalheSala> createState() => _DetalheSalaState();
}

class _DetalheSalaState extends State<DetalheSala> {
  @override
  Widget build(BuildContext context) {
    final Setor sala = ModalRoute.of(context)?.settings.arguments! as Setor;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Coworking",
        textAlign: TextAlign.center,
      )),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                  title: Text(sala.nome), leading: Icon(Icons.home_work)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(sala.qtdeMaquina.toString()),
                  leading: Icon(Icons.chair_sharp),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(sala.responsavel),
                  leading: Icon(Icons.co_present),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                  title: Text(sala.codigo),
                  leading: Icon(Icons.privacy_tip_sharp)),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
