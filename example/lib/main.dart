import 'package:flutter/material.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridButton'),
        ),
        body: Builder(builder: (context) {
          return GridButton(
            borderColor: Colors.black,
            onPressed: (String val) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(val),
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
            items: [
              [
                GridButtonItem(
                    title: "Black",
                    color: Colors.black,
                    textStyle: TextStyle(color: Colors.white)),
                GridButtonItem(title: "Red", color: Colors.red),
              ],
              [GridButtonItem(title: "Button", value: "100")],
              [
                GridButtonItem(title: "7"),
                GridButtonItem(title: "8"),
                GridButtonItem(title: "9"),
                GridButtonItem(title: "×", color: Colors.grey[300]),
              ],
              [
                GridButtonItem(title: "4"),
                GridButtonItem(title: "5"),
                GridButtonItem(title: "6"),
                GridButtonItem(title: "-", color: Colors.grey[300]),
              ],
              [
                GridButtonItem(title: "1"),
                GridButtonItem(title: "2"),
                GridButtonItem(title: "3"),
                GridButtonItem(title: "+", color: Colors.grey[300]),
              ],
              [
                GridButtonItem(title: "0"),
                GridButtonItem(title: "000", flex: 2),
                GridButtonItem(title: "=", color: Colors.grey[300]),
              ],
            ],
          );
        }),
      ),
    );
  }
}
