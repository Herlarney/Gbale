import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app_folder/app.locator.dart';
import '../../app_folder/app.router.dart';

class HomePageViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToUploadView() {
    _navigationService.navigateTo(
      Routes.uploadView,
    );
  }
}
