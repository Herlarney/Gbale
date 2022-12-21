

import 'package:gbale/view/log_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true )
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),  
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /// This serves no purpose rather than using the [StackedApp] notation.
}
