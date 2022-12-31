import 'package:flutter/material.dart';
import 'package:gbale/app_folder/app.locator.dart';
import 'package:gbale/app_folder/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  Future<void> isLoggedIn(context) async {
    Future<void>.delayed(const Duration(seconds: 4), () {
      navigateToLogin();
    });
  }

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
