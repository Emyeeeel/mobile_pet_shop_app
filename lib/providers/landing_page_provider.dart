import 'package:flutter/material.dart';

import '../models/landing_page_model.dart';

class LandingPageProvider with ChangeNotifier {
  List<Model> _modelList = [];

  List<Model> get modelList => _modelList;

  void setModelList(List<Model> newList) {
    _modelList = newList;
    notifyListeners();
  }

  int _currentModelId = 0;

  int get currentModelId => _currentModelId;

  void incrementModelId() {
    if (_currentModelId < _modelList.length - 1) {
      _currentModelId++;
      notifyListeners();
    }
  }
}
