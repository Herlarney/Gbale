import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:toggle_bar/toggle_bar.dart';

import 'package:gbale/core/constants/gbale_assets.dart';
import 'package:gbale/core/constants/gbale_colors.dart';
import 'package:gbale/core/constants/gbale_dimensions.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/view/manage_portfolio_viewmodel.dart';

class ManagePortfolio extends StatelessWidget {
  const ManagePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ViewModelBuilder<ManagePortfolioModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
        length: 2,
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
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: GbaleDimensions.large,
                  vertical: GbaleDimensions.medium),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          flex: 2,
                          child: CustomText(
                              text:
                                  'Upload, share and manage your brief with ease. Expose your brief to a community of 5000+ users'),
                        ),
                        GbaleSpacing.width(GbaleDimensions.large),
                        Expanded(
                          child: Image(
                            image: AssetImage(GbaleAssets.manageProperty),
                          ),
                        ),
                      ],
                    ),
                    const GbaleSpacing.mediumHeight(),
                    SizedBox(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, style: BorderStyle.none),
                                color: Colors.grey),
                            child:  TabBar(
                              indicator: const BoxDecoration(
                                color: Colors.green,
                              ),
                              // tabs: [
                              //   Tab(
                              //     text: 'Market',
                              //   ),
                              //   Tab(
                              //     text: 'Off Market',
                              //   ),
                              // ],
                              tabs: model.myTabs,
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.green,
                            ),
                          ),
                         const GbaleSpacing.height(18),
                         TabBarView(children: model.myTabs.map((Tab tab) {
                          final String  label = tab.text as String;
                          return Text('This is $label');
                         }).toList()
                         ),
                        ],
                      ),
                    ),
                    const GbaleSpacing.height(18),
                   
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ManagePortfolioModel(),
    );
  }
}
