import 'dart:ffi';
import 'dart:io';
import 'dart:math';
enum vote{Rock,Paper,scissors}

void main(){
var bot=0;
var Player=0;
while(bot==3 || Player==0 && bot==0 || Player==3){
  
var bot=0;
var Player=0;
  print ("Select Move.  \n  'Rock' for Rock, 'Paper' for Paper, 'Scissors' for scissors write. ");
  final move=stdin.readLineSync();

  var RandomNumber = Random().nextInt(3);

  var PHamle;
  if (move=='Rock') {
    PHamle=vote.Rock;
  }else if(move=='paper'){
    PHamle=vote.Paper;
  }else if(move=='scissors'){
    PHamle=vote.scissors;
  }else{
    print("Not Found.");
  }
  var RandomMove=vote.values[RandomNumber];
  var duz=RandomMove.name;

  print("Bot chose $duz .");
  print("Player chose $move .");

  if(PHamle==vote.scissors &&RandomMove==vote.Paper
          ||PHamle==vote.Rock &&RandomMove==vote.scissors
          ||PHamle==vote.Paper &&RandomMove==vote.Rock
          ){
            Player=Player+1;
            print("You Won .\n $Player-$bot");

  }else if (PHamle==RandomMove) {
    print("Draw.\n $Player-$bot");
  }
  else{
    bot=bot+1;
    print("You lose \n $Player-$bot");
  }

  if(move==vote.values){
    print("You made a $move ." );
  } 
  
}

}