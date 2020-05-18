import 'dart:async';
import 'dart:convert';

import 'package:aaretemperature/aare_data.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AareService extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AareData _aareData;
  AareData get aareData => _aareData;

  Future<bool> fetchAareData() async {
    try {
      final http.Response response =
          await http.get('http://aare.schwumm.ch/aare.json');

      if (response.statusCode >= 300) {
        _isLoading = false;
        notifyListeners();
        return false;
      }

      final Map<String, dynamic> fetchedData = json.decode(response.body);
      final AareData tempData = AareData(
          source: fetchedData['source'],
          temperature: fetchedData['temperature'].toDouble(),
          height: fetchedData['height'].toDouble(),
          flow: fetchedData['flow'].toDouble(),
          date: fetchedData['date']);
      _isLoading = false;
      notifyListeners();
      _aareData = tempData;
      return true;
    } catch (error) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
