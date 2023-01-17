// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gbale/shared/custom_button.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/shared/gbale_textform.dart';
import 'package:gbale/view/uoload/upload_viewmodel.dart';
import 'package:stacked/stacked.dart';

class UploadView extends StatelessWidget {
  const UploadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;
    return ViewModelBuilder<UploadViewModel>.reactive(
      viewModelBuilder: () => UploadViewModel(),
      builder: (context, model, child) => Scaffold(
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
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Image.asset('images/Group22.png'),
          ),
          const GbaleSpacing.height(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 150.h,
                  width: double.infinity,
                  child: GbaleTextFormFieldWidget(
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    hintText: 'Description',
                  ),
                ),
                const GbaleSpacing.smallHeight(),
                SizedBox(
                  width: double.infinity,
                  child: GbaleTextFormFieldWidget(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    hintText: 'Annual Rent',
                  ),
                ),
                const GbaleSpacing.smallHeight(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: DropdownButton<String>(
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: CustomText(text: 'House Type'),
                      ),
                      isExpanded: true,
                      value: model.selectedRoom,
                      items: model.rooms.map((String value) {
                        return DropdownMenuItem<String>(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(value),
                          ),
                          value: value,
                        );
                      }).toList(),
                      onChanged: model.updateSelectedRoom),
                ),
                const GbaleSpacing.smallHeight(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: DropdownButton<String>(
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: CustomText(text: 'City'),
                      ),
                      isExpanded: true,
                      value: model.selectedCity,
                      items: model.city.map((String value) {
                        return DropdownMenuItem<String>(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(value),
                          ),
                          value: value,
                        );
                      }).toList(),
                      onChanged: model.updateSelectedCity),
                ),
                const GbaleSpacing.smallHeight(),
                SizedBox(
                  width: double.infinity,
                  child: CustomText(
                    text: 'Additional Fee',
                    textStyle: textheme.bodySmall!.copyWith(
                      color: Colors.green,
                    ),
                  ),
                ),
                const GbaleSpacing.height(10),
                SizedBox(
                  width: double.infinity,
                  child: GbaleTextFormFieldWidget(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    hintText: 'Legal fee',
                  ),
                ),
                const GbaleSpacing.smallHeight(),
                SizedBox(
                  width: double.infinity,
                  child: GbaleTextFormFieldWidget(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    hintText: 'Caution fee',
                  ),
                ),
                const GbaleSpacing.smallHeight(),
                SizedBox(
                  width: double.infinity,
                  child: GbaleTextFormFieldWidget(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    hintText: 'services charge',
                  ),
                ),
                const GbaleSpacing.largeHeight(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: DropdownButton<String>(
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: CustomText(
                            textAlign: TextAlign.center, text: 'Area'),
                      ),
                      isExpanded: true,
                      value: model.selectedArea,
                      items: model.area.map((String value) {
                        return DropdownMenuItem<String>(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(value),
                          ),
                          value: value,
                        );
                      }).toList(),
                      onChanged: model.updateSelectedArea),
                ),
                GbaleSpacing.height(15.h),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: CustomText(
                      text: 'A minimum of 3 pictures is required',
                      textStyle: textheme.bodySmall!.copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                GbaleSpacing.height(15.h),
                Image.asset('images/Group23.png'),
                GbaleSpacing.height(25.h),
                const CustomButton(
                  label: 'Upload Properties',
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
