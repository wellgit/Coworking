import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:path/path.dart';

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
          "Designar/Cancelar Reserva",
          textAlign: TextAlign.center,
        )),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Nome Responsável da Sala:',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Máquinas disponíveis: 2',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/reserva');
                          },
                          child: Text('Reservar'))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(),
                          onPressed: () {
                            Navigator.pushNamed(context, '/cancela');
                          },
                          child: Text('Remover reservas'))
                    ],
                  ),
                )
              ],
            ),
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