// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/view/homepage/homepage_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Home extends ViewModelWidget<HomePageViewModel> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomePageViewModel model) {
    final textheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: Image.asset('images/log.png'),
        actions: [
          IconButton(
            color: Colors.green,
            onPressed: () => model.navigateToUploadView(),
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 26.h),
          child: Column(
            children: <Widget>[
              Container(
                height: 51.h,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                        backgroundImage: AssetImage('images/portrait.png')),
                    const GbaleSpacing.width(10),
                    GestureDetector(
                      onTap: () {},
                      child: CustomText(
                        text: 'Rasheed Ogunbade',
                        textStyle: textheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              const GbaleSpacing.height(30),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => model.navigateToUploadView(),
                    child: Image.asset(
                      'images/Group15.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const GbaleSpacing.width(40),
                  GestureDetector(
                    child: Image.asset(
                      'images/Group16.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 38.h,
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => model.navigateToRequest(),
                    child: Image.asset(
                      'images/Group17.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 40.h,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'images/Group18.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
