import 'package:flutter/material.dart';
import 'dart:math'; //for the randomization

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState(){
    return _HomePageState();
  }                                         // _ is used because we are defining a private class.
}

class _HomePageState extends State<HomePage>{
  var colors=[
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.green,
    //colors(0xFF and paste color code)   

  ];

  var currentColor=Colors.white;

  setRandomColor(){
    var rnd=Random().nextInt(colors.length); 
    setState(() {                       //setstate function expect a call back function
      currentColor=colors[rnd];
      
    });  //colors.length or 7 because the array has 7 colors.
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Change it!',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          
          ),
          onPressed: setRandomColor,
          shape: 
          RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0) ),
        ),
      ),
    );
  }
}
