import 'package:flutter/material.dart';
import 'package:gbale/view/request/request_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Request extends StatelessWidget {
 const Request({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<RequestModel>.reactive(
     builder: (context, model, child) => const Scaffold(),
     viewModelBuilder: () => RequestModel(),
   );
 }
}