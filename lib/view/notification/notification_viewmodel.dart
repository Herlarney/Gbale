import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NotificationModel extends BaseViewModel {
  final List<Tab> _tabs = <Tab>[
    const Tab(
      text: 'ManagePortfolio',
    ),
    const Tab(text: 'Request Properties'),
    const Tab(text: 'Ratings'),
     const Tab(text: 'Others'),
  ];

  List<Tab> get tabs => _tabs;
}
