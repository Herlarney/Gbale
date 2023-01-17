import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/view/request/request_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../shared/custom_button.dart';
import '../../shared/gbale_textform.dart';

class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ViewModelBuilder<RequestModel>.reactive(
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
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
            physics: const AlwaysScrollableScrollPhysics(),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.h),
                child: Column(
                  children: <Widget>[
                    Image.asset('images/Group25.png'),
                    GbaleSpacing.height(20.h),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1.w, style: BorderStyle.none),
                          color: Colors.grey),
                      child: TabBar(
                        indicator: const BoxDecoration(
                          color: Colors.green,
                        ),
                        tabs: model.myTabs,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.green,
                      ),
                    ),
                    GbaleSpacing.height(30.h),
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: [
                          Container(),
                          SizedBox(
                            height: 390.h,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.w, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: DropdownButton<String>(
                                      hint: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: CustomText(text: 'City'),
                                      ),
                                      isExpanded: true,
                                      value: model.selectedCity,
                                      items: model.city.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: model.updateSelectedCity),
                                ),
                                GbaleSpacing.height(15.h),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: DropdownButton<String>(
                                      hint: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: CustomText(
                                            textAlign: TextAlign.center,
                                            text: 'Area'),
                                      ),
                                      isExpanded: true,
                                      value: model.selectedArea,
                                      items: model.area.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: model.updateSelectedArea),
                                ),
                                GbaleSpacing.height(15.h),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: DropdownButton<String>(
                                      hint: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: CustomText(text: 'House Type'),
                                      ),
                                      isExpanded: true,
                                      value: model.selectedRoom,
                                      items: model.rooms.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.w),
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: model.updateSelectedRoom),
                                ),
                                GbaleSpacing.height(15.h),
                                SizedBox(
                                  width: double.infinity,
                                  child: GbaleTextFormFieldWidget(
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    hintText: 'Rent',
                                  ),
                                ),
                                GbaleSpacing.height(20.h),
                                const CustomButton(
                                  label: 'Request',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => RequestModel(),
    );
  }
}
