import 'package:gbale/view/Signup/signup_view.dart';
import 'package:gbale/view/forgot/forgot_password_view.dart';
import 'package:gbale/view/homepage/components/feed.dart';
import 'package:gbale/view/homepage/components/log_out.dart';
import 'package:gbale/view/homepage/homepageview.dart';
import 'package:gbale/view/login/login_view.dart';
import 'package:gbale/view/splash_screen/splash_view.dart';
import 'package:gbale/view/uoload/uoload_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  CupertinoRoute(page: SignUpView),
  CupertinoRoute(page: LoginView),
  CupertinoRoute(page: UploadView),
  CupertinoRoute(page: HomePageView),
  CupertinoRoute(page: ForgotPasswordView),
  CupertinoRoute(page: FeedView),
  CupertinoRoute(page: LogOut),
], dependencies: [
  LazySingleton(classType: NavigationService),
])
class AppSetup {
  /// This serves no purpose rather than using the [StackedApp] notation.
}
