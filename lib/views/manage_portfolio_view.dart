import 'package:flutter/material.dart';
import 'package:gbale/views/manage_portfolio_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ManagePortfolio extends StatelessWidget {
 const ManagePortfolio({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<ManagePortfolioModel>.reactive(
     builder: (context, model, child) =>  Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage()),
      ),
     ),
     viewModelBuilder: () => ManagePortfolioModel(),
   );
 }
}