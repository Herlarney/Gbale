import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ManagePortfolioModel extends BaseViewModel {
final List<Tab> _myTabs =   <Tab>[
   const Tab(text: 'Market',),
  const  Tab(text: 'Off Market',)
  ];
   List<Tab> get myTabs => _myTabs;
}
