import 'package:gbale/view/Signup/signup_view.dart';

import 'package:gbale/view/forgot/forgot_password_view.dart';
import 'package:gbale/view/homepage/components/feed.dart';
import 'package:gbale/view/homepage/components/log_out.dart';
import 'package:gbale/view/homepage/homepageview.dart';
import 'package:gbale/view/login/login_view.dart';
import 'package:gbale/view/notification/notification_view.dart';
import 'package:gbale/view/request/request_view.dart';
import 'package:gbale/view/splash_screen/splash_view.dart';
import 'package:gbale/view/uoload/uoload_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  AdaptiveRoute(page: SplashView, initial: true),
  AdaptiveRoute(page: SignUpView),
  AdaptiveRoute(page: LoginView),
  AdaptiveRoute(page: UploadView),
  AdaptiveRoute(page: HomePageView),
  AdaptiveRoute(page: ForgotPasswordView),
  AdaptiveRoute(page: FeedView),
  AdaptiveRoute(page: LogOut),
  AdaptiveRoute(page: Request),
  AdaptiveRoute(page: NotificationView,),
], dependencies: [
  LazySingleton(classType: NavigationService)
])
class AppSetup {
  /// This serves no purpose rather than using the [StackedApp] notation.
}
