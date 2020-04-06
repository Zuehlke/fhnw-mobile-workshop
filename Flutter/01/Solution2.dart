void main() {
  var notACoronavirus = "AGAAAUGAAUCUGUUAACCC";
  print(
      "Reverse transcription of $notACoronavirus: ${reverseTranscription(notACoronavirus)}");
}

String reverseTranscription(String rna) {
  return rna.split("").map((c) {
    switch (c) {
      case "G":
        return "C";
      case "C":
        return "G";
      case "U":
        return "A";
      case "A":
        return "T";
      default:
        throw ArgumentError("Invalid input");
    }
  }).join("");
}
