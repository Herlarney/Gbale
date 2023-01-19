import 'package:flutter/material.dart';
import 'package:gbale/view/dashboard/dashboard_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Dashboard extends StatelessWidget {
 const Dashboard({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<DashboardModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => DashboardModel(),
   );
 }
}