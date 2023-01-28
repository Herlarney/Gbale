import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/app_folder/app.router.dart';
import 'package:gbale/app_folder/app.locator.dart';

import 'package:gbale/core/theme/gbale_theme_manager.dart';
import 'package:stacked_services/stacked_services.dart';

import 'view/manage_portfolio/manage_portfolio_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, child) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gbale',
     // navigatorKey: StackedService.navigatorKey,
     // onGenerateRoute: StackedRouter().onGenerateRoute,
     home: ManagePortfolio();
    
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: GbaleThemeManager.lightTheme,
    );
  }
}
