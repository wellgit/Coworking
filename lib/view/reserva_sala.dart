import 'package:flutter/material.dart';
import 'package:flutter_calendar_widget/flutter_calendar_widget.dart';

class ReservaSala extends StatefulWidget {
  ReservaSala({Key? key}) : super(key: key);

  @override
  State<ReservaSala> createState() => _ReservaSalaState();
}

class _ReservaSalaState extends State<ReservaSala> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Coworking",
          textAlign: TextAlign.center,
        )),
        body: Container(
          child: Column(
            children: [
              Text('Espaço Equipe Dev'),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Nome',
                ),
                autofocus: true,
              ),
              FlutterCalendar(
                focusedDate: DateTime.now(),
                key: Key('calendario'),
                selectionMode: CalendarSelectionMode.multiple,
                onMultipleDates: (List<DateTime> dates) {
                  var _lista = dates;
                  _lista.map((e) => {
                        if (dates.contains(e)) {dates.remove(e)}
                      });
                },
                onDayPressed: (dateTime) => {Widget},
                pageController: _pageController,
                locale: 'pt-BR',
              ),
              SizedBox(height: 100),
              RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.blue,
                child: Icon(
                  Icons.add,
                  size: 35.0,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              )
            ],
          ),
        ));
  }
}

alerta() {}

/*SfCalendar(
  view: CalendarView.month,
  firstDayOfWeek: 7,
  showCurrentTimeIndicator: true,
)*/