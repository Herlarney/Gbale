import 'package:gbale/app_folder/app.locator.dart';
import 'package:gbale/app_folder/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> login() async {
    navigateToHomeView();
  }

  void navigateToForgotPassword() {
    _navigationService.navigateTo(Routes.forgotPasswordView);
  }

  void navigateToSignUpView() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void navigateToHomeView() {
    _navigationService.navigateTo(Routes.homePageView);
  }
}
