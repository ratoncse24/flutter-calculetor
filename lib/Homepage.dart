import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => new _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var num1=0, num2=0, sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  
  void doAddition(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  
  void doSub(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul(){

    setState(() {
          num1 = int.parse(t1.text);
          num2 = int.parse(t2.text);
          sum = num1 * num2;
        });

  }

  void doDiv(){
    setState(() {
            num1 = int.parse(t1.text);
            num2 = int.parse(t2.text);
            sum = num1 ~/ num2 ;
        });
  }

  void doClear(){
    setState(() {
          t1.text = "0";
          t2.text = "0";
        });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculetor"),
      ),
      body: new Container( 
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(fontSize: 20.0, color: Colors.purple, fontWeight: FontWeight.bold),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                labelText: "Enter Number 1"
              ),
              controller: t1,
            ),  
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                labelText: "Enter Number 2"
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top:  20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  onPressed: doAddition,
                  color: Colors.greenAccent,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  onPressed: doSub,
                  color: Colors.greenAccent,
                ),
                
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
             new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  onPressed: doMul,
                   color: Colors.greenAccent,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  onPressed: doDiv,
                   color: Colors.greenAccent,
                ),
                
              ],
            ),
              new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}