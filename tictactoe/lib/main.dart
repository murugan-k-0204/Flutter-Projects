import 'package:flutter/material.dart';

void main(){
  runApp(HomeScreen());
}

class default_val{
  String a= "";
  String b= "";
  String c= "";
  String d= "";
  String e= "";
  String f= "";
  String g= "";
  String h= "";
  String i= "";
  
  void init(){

  }
}

bool first_time= true;
// String a = "";
// String b = "";
// String c = "";
// String d = "";
// String e = "";
// String f = "";
// String g = "";
// String h = "";
// String i = "";
bool to_update_X = true;
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool color_is_blue = false;

  late String a,b,c,d,e,f,g,h,i;
  void start_it(){
    default_val ha = new default_val();
    a = ha.a;
    b = ha.b;
    c = ha.c;
    d = ha.d;
    e = ha.e;
    f = ha.f;
    g = ha.g;
    h = ha.h;
    i = ha.i;
  }
  ElevatedButton singleBox(){
    return ElevatedButton(
      onPressed: (){
        setState(() {
          color_is_blue = !color_is_blue;
        });
      },
      style: ElevatedButton.styleFrom(fixedSize: Size(100, 100),primary:Colors.white),
      child: Text(color_is_blue?"":"X", style: TextStyle(fontSize: 30,color: Colors.cyan),),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    if(first_time){
      first_time = false;
      start_it();
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
          actions: [
            IconButton(
              onPressed: (){
                setState(() {
                  start_it();
                  to_update_X = true;
                });
              }, 
              icon: Icon(Icons.refresh,size: 30,))
          ],
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children : [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if(a==""){
                          print(b);
                          a=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(a,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( b== ""){
                          b=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(b,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( c== ""){
                          c=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                      
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(c,style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children : [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( d== ""){
                          d=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(d,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( e== ""){
                          e=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(e,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( f== ""){
                          f=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(f,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children : [
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( g== ""){
                          g=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(g,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( h== ""){
                          h=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(h,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if(i == ""){
                          i=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(i,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}