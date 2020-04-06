// Uebung 1.4

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

  // Generiere eine zufaellige Zahl von 0-2
  var move;

  switch (move) {
    // Gib je nach Zahl "Rock" "Paper" oder "Scissors" zurueck

    default:
      return "Rock";
      break;
  }
}

String rockPaperScissors(String playerMove, String rngMove) {
  // Vergleiche die Zuege und gib zurueck wer gewonnen hat
}
