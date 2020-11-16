import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  );

  ThemeData _darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.amber,
    ),
  );

  bool _light = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      title: 'Dynamic Theme',
      darkTheme: _darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Theme'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Enter name'),
                ),
                RaisedButton(
                  child: Text('Click Me'),
                  onPressed: () {},
                ),
                Switch(
                  value: _light,
                  onChanged: (state) {
                    setState(() {
                      _light = state;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
