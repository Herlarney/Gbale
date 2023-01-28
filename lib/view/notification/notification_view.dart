import 'package:flutter/material.dart';
import 'package:gbale/core/constants/gbale_assets.dart';
import 'package:gbale/core/constants/gbale_colors.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/view/manage_portfolio/manage_portfolio_view.dart';
import 'package:gbale/view/notification/notification_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NotificationView extends StatelessWidget {
  
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final textTheme = Theme.of(context).textTheme;
    return ViewModelBuilder<NotificationModel>.reactive(
      builder: (context, model, child) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              leading:
                  const Image(image: AssetImage(GbaleAssets.appBarLeadingImage)),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                  color: GbaleColors.primary,
                ),
              ],
               bottom: TabBar(tabs: model.tabs,
               isScrollable: true,
               labelColor: GbaleColors.secondaryTextColor,
               labelStyle: textTheme.bodyMedium,
               ),
            ),
            body: const SafeArea(
              child:  TabBarView(children: [
             
               Text('Manage Portfolio',
               textAlign: TextAlign.center,),
                  Text('Request', textAlign: TextAlign.center,),
               Text('Notification', textAlign: TextAlign.center,),
               Text('Dashboard', textAlign: TextAlign.center,),
              ]),
            ),
          ),
        );
      },
      viewModelBuilder: () => NotificationModel(),
    );
  }
}
