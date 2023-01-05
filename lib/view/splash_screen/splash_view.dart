import 'package:flutter/material.dart';
import 'package:gbale/view/splash_screen/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) {
        model.isLoggedIn(context);
      },
      builder: (_, __, ___) => Scaffold(
        body: Image.asset(
          "images/group1.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
