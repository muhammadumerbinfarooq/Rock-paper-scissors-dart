import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Rock, Paper, Scissors!");

  while (true) {
    print("Enter your choice (rock/paper/scissors) or 'quit' to exit:");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == 'quit') {
      break;
    }

    List<String> choices = ['rock', 'paper', 'scissors'];
    String computerChoice = choices[Random().nextInt(choices.length)];

    print("Computer chose: $computerChoice");

    if (userChoice == computerChoice) {
      print("It's a tie!");
    } else if ((userChoice == 'rock' && computerChoice == 'scissors') ||
        (userChoice == 'scissors' && computerChoice == 'paper') ||
        (userChoice == 'paper' && computerChoice == 'rock')) {
      print("You win!");
    } else {
      print("Computer wins!");
    }
  }
}
