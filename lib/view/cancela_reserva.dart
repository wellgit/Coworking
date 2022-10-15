import 'dart:collection';
import 'package:flutter/material.dart';
import './utils.dart';

class CancelaReserva extends StatefulWidget {
  CancelaReserva({Key? key}) : super(key: key);

  @override
  State<CancelaReserva> createState() => _CancelaReservaState();
}

class _CancelaReservaState extends State<CancelaReserva> {
  final Set<DateTime> _selectedDaysTemp = LinkedHashSet<DateTime>(
    equals: isSameDayUtil,
    hashCode: getHashCode,
  );

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      if (_selectedDaysTemp.contains(selectedDay)) {
        _selectedDaysTemp.remove(selectedDay);
      } else {
        _selectedDaysTemp.add(selectedDay);
      }
    });
  }

  void _fillDays() {
    final _today = DateTime.now();
    for (var i = 0; i < 5; i++) {
      final aletoryDay = DateTime(_today.year, _today.month - 3, _today.day);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Cancelar Reserva",
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
                  SizedBox(height: 24.33),
                  Container(
                    width: 345,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffbdf9eb),
                    ),
                    padding: const EdgeInsets.only(
                      left: 14,
                      right: 103,
                      top: 23,
                      bottom: 22,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 228,
                          child: Text(
                            "Espaço Equipe Dev Brasil Team",
                            style: TextStyle(
                              color: Color(0xef000000),
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.33),
                  Text(
                    "João da Silva",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 24.33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(value: false, onChanged: marcarTodos),
                      Text(
                        "Marcas todos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.delete, size: 30, color: Colors.black)
                    ],
                  ),
                  Container(
                    color: Color(0xffd9d9d9),
                    child: Row(
                      children: [
                        Checkbox(value: false, onChanged: marcarTodos),
                        Text(
                          "12/09/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }

  void marcarTodos(bool? value) {}
}
