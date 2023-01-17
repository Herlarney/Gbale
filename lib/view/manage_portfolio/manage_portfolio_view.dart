import 'package:flutter/material.dart';
import 'package:gbale/view/manage_portfolio/manage_portfolio_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'package:gbale/core/constants/gbale_assets.dart';
import 'package:gbale/core/constants/gbale_colors.dart';
import 'package:gbale/core/constants/gbale_dimensions.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';

class ManagePortfolio extends StatefulWidget {
  const ManagePortfolio({Key? key}) : super(key: key);

  @override
  State<ManagePortfolio> createState() => _ManagePortfolioState();
}

class _ManagePortfolioState extends State<ManagePortfolio>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ViewModelBuilder<ManagePortfolioModel>.reactive(
      builder: (context, model, child) => Scaffold(
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
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomText(
                          text:
                              'Upload, share and manage your brief with ease. Expose your brief to a community of 5000+ users',
                          textStyle: textTheme.bodyMedium!
                              .copyWith(color: GbaleColors.secondaryTextColor)),
                    ),
                    const GbaleSpacing.width(GbaleDimensions.large),
                    const Expanded(
                      child: Image(
                        image: AssetImage(GbaleAssets.manageProperty),
                      ),
                    ),
                  ],
                ),
                const GbaleSpacing.mediumHeight(),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, style: BorderStyle.none),
                      color: Colors.grey),
                  child: TabBar(
                    indicator: const BoxDecoration(
                      color: Colors.green,
                    ),
                    controller: _tabController,
                    tabs: model.myTabs,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.green,
                  ),
                ),
                const GbaleSpacing.height(18),
                Flexible(
                  child: SizedBox(
                    width: double.maxFinite,
                    //  height: 300,
                    child: TabBarView(
                      controller: _tabController,
                      children: model.myTabs.map((Tab tab) {
                        final String label = tab.text as String;
                        return Text('This is $label');
                      }).toList(),
                      // children: const [

                      //   Text('This is left'),
                      //   Text('This is right')],
                    ),
                  ),
                ),
                // const GbaleSpacing.height(18),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ManagePortfolioModel(),
    );
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
}
