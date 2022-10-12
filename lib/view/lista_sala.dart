import 'package:coworking/model/setor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ListaSala extends StatefulWidget {
  ListaSala({Key? key}) : super(key: key);

  @override
  State<ListaSala> createState() => _ListaSalaState();
}

class _ListaSalaState extends State<ListaSala> {
  @override
  Widget build(BuildContext context) {
    bool inputEmpresaPreenchido = false;
    var setor = Setor(
        nome: 'Sala de desenvolvimento',
        responsavel: 'João da Silva',
        qtdeMaquina: 10,
        codigo: 'a22b5',
        idEmpresa: 1);

    var setores = [];
    setores.add(setor);
    var subtitles = ['Subtitulo'];

    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Coworking",
          textAlign: TextAlign.center,
        )),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Flexible(
                        child: TextField(
                      decoration: InputDecoration(
                          enabled: false, hintText: 'Dados da Empresa'),
                    )),
                    Flexible(
                        child: IconButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, '/cadastroEmpresa');
                      }),
                      icon:
                          Icon(!inputEmpresaPreenchido ? Icons.add : Icons.add),
                    ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Flexible(
                  child: SizedBox(
                height: 30,
              )),
              Flexible(
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: setores.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/detalheSala',
                              arguments: setores[index]);
                        },
                        child: Card(
                            child: ListTile(
                                trailing:
                                    Text(setores[index].qtdeMaquina.toString()),
                                title: Text(setores[index].nome),
                                subtitle: Text("Responsável: " +
                                    setores[index].responsavel +
                                    '\n' +
                                    setores[index].codigo))),
                      );
                    }),
              ),
              Flexible(
                  child: Container(
                alignment: Alignment.bottomRight,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastroSala');
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 24,
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ))
            ],
          ),
        ));
  }
}
