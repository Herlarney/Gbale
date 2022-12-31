import 'package:gbale/app_folder/app.locator.dart';
import 'package:gbale/app_folder/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
