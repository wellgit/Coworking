import 'package:flutter/material.dart';

class DesignaReserva extends StatefulWidget {
  DesignaReserva({Key? key}) : super(key: key);

  @override
  State<DesignaReserva> createState() => _DesignaReservaState();
}

class _DesignaReservaState extends State<DesignaReserva> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Coworking",
          textAlign: TextAlign.center,
        )),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Responsável da Sala:',
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Disponíveis: '),
                    ElevatedButton(onPressed: alerta, child: Text('Reservar'))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Ocupados: '),
                    ElevatedButton(onPressed: alerta, child: Text('Desmarcar'))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

alerta() {}
/*
Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Responsável da Sala:',
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              children: [
                Text('Disponíveis'),
                ElevatedButton(onPressed: alerta, child: Text('Reservar'))
              ],
            ),
          )
        ],
      ),
    )
*/