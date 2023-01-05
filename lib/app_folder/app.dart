import 'package:gbale/views/manage_portfolio_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
   
  ],
  dependencies:[ LazySingleton(classType: NavigationService)]
)
class AppSetup {
  /// This serves no purpose rather than using the [StackedApp] notation.
}
