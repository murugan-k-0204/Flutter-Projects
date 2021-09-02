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
  String winner = "Play on";
  bool isDisabled = false;
  
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
  late String winner;
  bool color_is_blue = false;
  int announce_winner = 0;
  late bool is_game_over;
  late String a,b,c,d,e,f,g,h,i;
  void tttValidator(String a,String b, String c, String d, String e, String f,String g, String h, String i){
    if((a=='X' && b=='X' && c=='X') || (d=='X' && e=='X' && f=='X') || (g=='X' && h=='X' && i=='X') || (a=='X' && d=='X' && g=='X') || (b=='X' && e=='X' && h=='X') ||(c=='X' && f=='X' && i=='X') ||(a=='X' && e=='X' && i=='X') || (g=='X' && e=='X' && c=='X') ){
      is_game_over = true;
      winner = "First player has won";
    }
    else if((a=='O' && b=='O' && c=='O') || (d=='O' && e=='O' && f=='O') || (g=='O' && h=='O' && i=='O') || (a=='O' && d=='O' && g=='O') || (b=='O' && e=='O' && h=='O') ||(c=='O' && f=='O' && i=='O') ||(a=='O' && e=='O' && i=='O') || (g=='O' && e=='O' && c=='O') ){
      is_game_over = true;
      winner = "Second player has won";
    }
    else if( a!="" && b!="" && c!="" && d!="" && e!="" && f!="" && g!="" && h!="" && i!=""){
      winner = "Oops!! It's a DRAW \n Better luck next time";

    }
      announce_winner = 0;
  }
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
    winner = ha.winner;
    is_game_over = ha.isDisabled;
  }
  // ElevatedButton singleBox(){
  //   return ElevatedButton(
  //     onPressed: (){
  //       setState(() {
  //         color_is_blue = !color_is_blue;
  //       });
  //     },
  //     style: ElevatedButton.styleFrom(fixedSize: Size(100, 100),primary:Colors.white),
  //     child: Text(color_is_blue?"":"X", style: TextStyle(fontSize: 30,color: Colors.cyan),),
      
  //   );
  // }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(winner,style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children : [
                  ElevatedButton(
                    child: Text(a,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(onPrimary: Colors.yellow,shadowColor: Colors.deepOrange,onSurface: Colors.brown,fixedSize: Size(100,100),primary: Colors.white),
                    onPressed: (){
                      setState(() {
                        if(a=="" && !is_game_over){
                          a=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
                        }
                      });
                    },
                    
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( b== "" && !is_game_over){
                          b=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(b,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( c== "" && !is_game_over){
                          c=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
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
                        if( d== "" && !is_game_over){
                          d=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(d,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( e== "" && !is_game_over){
                          e=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(e,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( f== "" && !is_game_over){
                          f=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
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
                        if( g== "" && !is_game_over){
                          g=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(g,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if( h== "" && !is_game_over){
                          h=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),primary: Colors.white),
                    child: Text(h,style: TextStyle(fontSize: 40,color:Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if(i == "" && !is_game_over){
                          i=to_update_X?"X":"O";
                          to_update_X = !to_update_X;
                          tttValidator(a, b, c, d, e, f, g, h, i);
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