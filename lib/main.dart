import 'package:dropdown_field/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';


void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String country_id;
 static  List<String> country = [
    "America",
    "Brazil",
    "Canada",
    "India",
    "Mongalia",
    "USA",
    "China",
    "Russia",
    "Germany"
  ];

  String country_id2;
  static  List<String> country2 = [
    "America",
    "Brazil",
    "Canada",
    "India",
    "Mongalia",
    "USA",
    "China",
    "Russia",
    "Germany"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Form"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DropDownField(
                  onValueChanged: (dynamic value) {
                    country_id = value;
                  },
                  value: country_id,
                  required: false,
                  hintText: 'Choose a country',
                  labelText: 'Country',
                  items: country,
                ),
                SizedBox(height: 20.0,),
                DropDownField(
                  onValueChanged: (dynamic value) {
                    country_id2 = value;
                  },
                  value: country_id2,
                  required: false,
                  hintText: 'Choose a country',
                  labelText: 'Country',
                  items: country2,
                ),
                SizedBox(height: 20.0,),

                RaisedButton(
                  child: Text('Submit'),
                  color: Colors.yellowAccent,
                  onPressed: (){
                    if(country_id == country.elementAt(2) && country_id2 == country.elementAt(0)){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }


                  },
                )
              ]),
        ),
      )
    );
  }
}