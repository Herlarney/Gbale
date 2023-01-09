import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ManagePortfolioModel extends BaseViewModel {
  final List<String> _labels = ['In Market', 'off Market'];
  List<String> get labels => _labels;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  final List<Tab> _myTab = <Tab>[
    const Tab(
      text: 'Market',
    ),
    const Tab(text: 'Off Market'),
  ];
  List<Tab> get myTabs => _myTab;
  void updatedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
