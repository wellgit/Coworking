import 'package:flutter/material.dart';

class CadastroSala extends StatefulWidget {
  CadastroSala({Key? key}) : super(key: key);

  @override
  State<CadastroSala> createState() => _CadastroSalaState();
}

class _CadastroSalaState extends State<CadastroSala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro Setor/Sala'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Nome Sala',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Qtde Máquina',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Nome responsável setor',
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                child: Icon(
                  Icons.add,
                  size: 24,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
