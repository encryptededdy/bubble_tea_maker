import 'package:flutter/material.dart';

void main() {
  runApp(new BubbleTeaApp());
}

class BubbleTeaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Bubble Tea",
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new TeaBuilder(),
    );
  }
}

class TeaBuilder extends StatefulWidget {
  @override
  State createState() => new TeaBuilderState();
}

class TeaBuilderState extends State<TeaBuilder> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Bubble Tea Builder")),
        body: _buildTeaBody()
    );
  }

  String baseDrinkValue;
  String toppingValue;

  Widget _buildTeaBody() {
    return new Container(
      margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: new Column(
        children: <Widget>[
          new ListTile(
              title: const Text("Base Drink"),
              trailing: new DropdownButton(
                value: baseDrinkValue,
                hint: const Text('Pick a base drink'),
                onChanged: (String newValue) {
                  setState(() {
                    print(newValue);
                    baseDrinkValue = newValue;
                    print(baseDrinkValue);
                  });
                },
                items: <String>['Milk Tea', 'Roasted Milk Tea', 'Jasmine Green Milk Tea', 'Brown Rice Green Milk Tea', 'Oolong Milk Tea', 'Earl Grey Milk Tea']
                    .map((String value) {
                  return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value));
                }).toList(),
              )
          ),
          new ListTile(
              title: const Text("Topping"),
              trailing: new DropdownButton(
                value: toppingValue,
                hint: const Text('Pick a base drink'),
                onChanged: (String newValue) {
                  setState(() {
                    print(newValue);
                    toppingValue = newValue;
                    print(toppingValue);
                  });
                },
                items: <String>['Pearls', 'Grass Jelly', 'Coconut Jelly', 'Rainbow Jelly', 'Grape Jelly', 'Aiyu Jelly', 'Aloe Vera', 'Red Bean']
                    .map((String value) {
                  return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value));
                }).toList(),
              )
          ),
        ],
      ),
    );
  }
}
