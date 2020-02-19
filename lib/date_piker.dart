import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  DateTime selectedDate = DateTime.now();
  TimeOfDay _currentTime = new TimeOfDay.now();
  String messi = "";

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<Null> selectTime(BuildContext context) async {
    TimeOfDay selectedTime = await showTimePicker(
      context: context,
      initialTime: _currentTime,
    );

    MaterialLocalizations localizations = MaterialLocalizations.of(context);
    String formattedTime = localizations.formatTimeOfDay(selectedTime,
        alwaysUse24HourFormat: false);

    if (formattedTime != null) {
      setState(() {
        messi = formattedTime;
        print(messi);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messi"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(height: 20.0,),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
            RaisedButton(
              onPressed: () => selectTime(context),
              child: Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
