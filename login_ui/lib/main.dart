
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Login App"),
      ),
      body: Column(
        children: [
          Text("Enter Your Name", style: TextStyle(fontSize: 30),),
          TextField(
            
            autocorrect: false,
            style: TextStyle(color: Colors.red, fontSize: 30),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Please enter your name",
            ),
          ),
          Text("Enter your age ", style: TextStyle(fontSize: 30),),
          TextField(
            decoration: InputDecoration(
              prefix: Text("12434"),
              suffix: Text("444098"),
              icon: Icon(Icons.send),
              hintText: "enter the age",
              helperText: "this field is important",

              counterText: "5"
            ),
            // maxLength: 10,
            // decoration: InputDecoration(
            //   hintText: "enter the age",
            //   border: OutlineInputBorder(),
            
            ),
          
        ],
      ),
    );
  }
}

class sizeConfig{

}