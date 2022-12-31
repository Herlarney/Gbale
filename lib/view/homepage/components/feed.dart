import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/shared/custom_button.dart';
import 'package:gbale/shared/gbale_textform.dart';
import 'package:gbale/view/homepage/homepage_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FeedView extends ViewModelWidget<HomePageViewModel> {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomePageViewModel model) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          leading: Image.asset('images/log.png'),
          actions: [
            IconButton(
              color: Colors.green,
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 28.h),
              child: Column(children: <Widget>[
                Image.asset('images/Group28.png'),
                SizedBox(
                  height: 10.h,
                ),
                Image.asset('images/stars.png'),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 150.h,
                  width: 200.h,
                  child: GbaleTextFormFieldWidget(
                    hintText: 'Leave us a feedback',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton(label: 'Submit', onTap: () {}),
              ]),
            ),
          ),
        ),
      );
}
