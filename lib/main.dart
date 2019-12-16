import 'package:flutter/material.dart';

void main() => runApp(CountNumber());
class CountNumber extends StatefulWidget {
  @override
  _CountNumberState createState() => _CountNumberState();
}

class _CountNumberState extends State<CountNumber> {
  int _increasment = 0;
  Color _color;
  void add(){
    setState(() {
     _increasment++; 

      switch(_increasment){
        case 1:
        _color = Colors.teal;
        break;
        case 5:
        _color = Colors.red;
        break;
        case 10:
        _color = Colors.green;
        break;
        case 15:
        _color = Colors.orange;
        break;
        case 20:
        _color = Colors.pink;
        break;
        case 25:
        _color = Colors.yellow;
        break;
      }
    });
  }
  void minus(){
    setState(() {
     _increasment--;
      switch(_increasment){
        case 1:
        _color = Colors.teal;
        break;
        case 5:
        _color = Colors.red;
        break;
        case 10:
        _color = Colors.green;
        break;
        case 15:
        _color = Colors.orange;
        break;
        case 20:
        _color = Colors.pink;
        break;
        case 25:
        _color = Colors.yellow;
        break;
        default:
        break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: _color,
        appBar: AppBar(centerTitle: true,
          title: Text("CountNumber"),
          backgroundColor: _color,
        ),
        body: Column(
          children: <Widget>[
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(margin: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  onPressed: (){add();},
                  child: Text("Increasment"),color: Colors.teal,
                ),
              ),
              Container(margin: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  onPressed: (){minus();},
                  child: Text("Decreasment"),color: Colors.pink,
                ),
              ),
            ],
          ),
          Container(margin: EdgeInsets.only(top: 50),
            child: Text("${_increasment}",
            style: TextStyle(fontSize: 100,),
            ),
          ),
          ],
        ),
      ),
    );
  }
}