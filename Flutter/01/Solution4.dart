import 'dart:math';

void main() {
  // Rock / Paper / Scissors
  var playerMove = "Rock";
  var rngMove = getRandomMove();

  print("Player: $playerMove vs. RNG: $rngMove");
  print(rockPaperScissors(playerMove, rngMove));
}

String getRandomMove() {
  Random rand = new Random();
  // Random int von 0 bis 2
  int move = rand.nextInt(3);

  switch (move) {
    case 0:
      return "Rock";
      break;
    case 1:
      return "Paper";
      break;
    case 2:
      return "Scissors";
      break;
    default:
      return "Rock";
      break;
  }
}

String rockPaperScissors(String playerMove, String rngMove) {
  if (playerMove == rngMove) {
    return "It's a tie";
  } else if (playerMove == "Rock" && rngMove == "Scissors") {
    return "Player wins!";
  } else if (playerMove == "Scissors" && rngMove == "Paper") {
    return "Player wins!";
  } else if (playerMove == "Paper" && rngMove == "Rock") {
    return "Player wins!";
  } else {
    return "RNG wins!";
  }
}
