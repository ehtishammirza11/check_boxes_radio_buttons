import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Enrollment Form"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CheckBoxes(),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 18),
              child: Divider(
                thickness: 2,
              ),
            ),
            RadioButtons(),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 18),
              child: Divider(
                thickness: 2,
              ),
            ),
            EnrollButton(),
          ],
        ),
      ),
    );
  }
}

class CheckBoxes extends StatefulWidget {
  @override
  _CheckBoxesState createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool _checkedValue1 = false;
  bool _checkedValue2 = false;
  bool _checkedValue3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Your area of interest:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          CheckboxListTile(
            title: Text("IoT"),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedValue1,
            // splashRadius: 20,
            onChanged: (value) {
              _checkedValue1 = value;
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: Text("Artificial Intelligence"),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedValue2,
            // splashRadius: 20,
            onChanged: (value) {
              _checkedValue2 = value;
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: Text("Mobile Application Development"),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedValue3,
            // splashRadius: 20,
            onChanged: (value) {
              _checkedValue3 = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class RadioButtons extends StatefulWidget {
  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Select your gender:",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        _myRadioButton(
          title: "Male",
          value: 0,
          onChanged: (newValue) => setState(() => _groupValue = newValue),
        ),
        _myRadioButton(
          title: "Female",
          value: 1,
          onChanged: (newValue) => setState(() => _groupValue = newValue),
        ),
        _myRadioButton(
          title: "Other",
          value: 3,
          onChanged: (newValue) => setState(() => _groupValue = newValue),
        ),
      ],
    );
  }

  _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}

class EnrollButton extends StatefulWidget {
  @override
  _EnrollButtonState createState() => _EnrollButtonState();
}
class _EnrollButtonState extends State<EnrollButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      textColor: Colors.white,
      elevation: 6.0,
      color: Colors.deepPurple,
      onPressed: () {},
      icon: Icon(
        Icons.send,
        color: Colors.white,
      ),
      label: Text(
        "Enroll",
      ),
    );
  }
}
