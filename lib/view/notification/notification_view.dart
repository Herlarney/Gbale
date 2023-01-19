import 'package:flutter/material.dart';
import 'package:gbale/view/notification/notification_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Notification extends StatelessWidget {
 const Notification({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<NotificationModel>.reactive(
     builder: (context, model, child) => const Scaffold(),
     viewModelBuilder: () => NotificationModel(),
   );
 }
}