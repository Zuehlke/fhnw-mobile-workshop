// Uebung 1.2

// Um einen PCR-Test auf das neue Coronavirus zu machen muss die Virus-RNA in DNA
// umgewandelt werden. :)
// Implementiere hierzu die Methode zur reversen Transkription, die die Input RNA in
// DNA umwandelt.
// Es gelten folgende Regeln:
// A wird zu T
// G wird zu C
// C wird zu G
// U wird zu A
// Andere Symbole sind nicht akzeptiert
// Tipp: split("") gibt die einzelnen Chars eines Strings zurück

void main() {
  var notACoronavirus = "AGAAAUGAAUCUGUUAACCC";
  print(
      "Reverse transcription of $notACoronavirus: ${reverseTranscription(notACoronavirus)}");
}

String reverseTranscription(String rna) {
  // TODO
  return "";
}
