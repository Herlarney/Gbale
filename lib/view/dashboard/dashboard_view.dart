import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/view/dashboard/dashboard_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../shared/custom_button.dart';
import '../../shared/custom_text.dart';
import '../../shared/gbale_spacing.dart';
import '../../shared/gbale_textform.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;

    return ViewModelBuilder<DashboardModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3,
          leading: Image.asset('images/log.png'),
          actions: [
            IconButton(
              color: Colors.green,
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/portrait.png'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomText(
                      text: 'Rasheed Ogunbade',
                      textStyle: textheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: <Widget>[
                      GbaleTextFormFieldWidget(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Name',
                      ),
                      GbaleSpacing.height(30.h),
                      GbaleTextFormFieldWidget(
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Email',
                      ),
                      GbaleSpacing.height(30.h),
                      GbaleTextFormFieldWidget(
                        prefixIcon: const Icon(Icons.contact_phone),
                        hintText: 'Phone Number',
                      ),
                      const GbaleSpacing.height(20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              label: 'Update',
                              onTap: () {},
                            ),
                          ]),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
      viewModelBuilder: () => DashboardModel(),
    );
  }
}
