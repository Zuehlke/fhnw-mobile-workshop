import 'dart:async';

import 'package:aaretemperature/aare_data.dart';
import 'package:flutter/foundation.dart';

class AareService extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AareData _aareData;
  AareData get aareData => _aareData;

  Future<bool> fetchAareData() async {
    try {
      // TODO 1: Erstelle ein Response Objekt und lade die Inhalte von
      // TODO 1: http://aare.schwumm.ch/aare.json

      // TODO 2: Pruefe dass der Statuscode ok ist

      // TODO 3: Naechste Zeile auskommentieren
      //final Map<String, dynamic> fetchedData = json.decode(response.body);

      // TODO 4: Erstelle ein AareData Objekt und befuelle Konstruktor mit
      // TODO 4: den Werten aus fetchedData

      // TODO 5: Setze _isLoadingState, _aareData und benachrichtige die Listeners

      return true;
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
