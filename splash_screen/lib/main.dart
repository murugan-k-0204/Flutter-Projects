import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Splash screen",
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(Icons.shopping_basket,size: 50,color: Colors.blue,),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('ShopKart',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),)
                    ],
                  )),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(strokeWidth: 3,color: Colors.white,),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text("Shopping Made Simple",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)
                      ],
                    ),
                  ),
            ],
          )
        ],
      ),
    );
  }
}
