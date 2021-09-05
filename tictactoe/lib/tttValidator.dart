import 'package:flutter/material.dart';

class do_Validation{
  // ignore: non_constant_identifier_names
  bool is_game_over = false;
  late String winner;
  int ans = 0;

  int tttValidator(String a,String b, String c, String d, String e, String f,String g, String h, String i, BuildContext context){
    if((a=='X' && b=='X' && c=='X') || (d=='X' && e=='X' && f=='X') || (g=='X' && h=='X' && i=='X') || (a=='X' && d=='X' && g=='X') || (b=='X' && e=='X' && h=='X') ||(c=='X' && f=='X' && i=='X') ||(a=='X' && e=='X' && i=='X') || (g=='X' && e=='X' && c=='X') ){
      is_game_over = true;
      winner = "First player has won";
      ans = 1;
      if(is_game_over)
        // message(context,winner);
        print("workkking");
    }
    else if((a=='O' && b=='O' && c=='O') || (d=='O' && e=='O' && f=='O') || (g=='O' && h=='O' && i=='O') || (a=='O' && d=='O' && g=='O') || (b=='O' && e=='O' && h=='O') ||(c=='O' && f=='O' && i=='O') ||(a=='O' && e=='O' && i=='O') || (g=='O' && e=='O' && c=='O') ){
      is_game_over = true;
      ans=2;
      winner = "Second player has won";
      if(is_game_over)
        // message(context,winner);
        print("working");
    }
    else if( a!="" && b!="" && c!="" && d!="" && e!="" && f!="" && g!="" && h!="" && i!=""){
      winner = "Oops!! It's a DRAW \n Better luck next time";
      ans = -1;

    }
    return ans;
  }
}