import 'package:flutter/material.dart';
import 'package:gbale/shared/custom_button.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/shared/gbale_textform.dart';
import 'package:gbale/view/Signup/signup_viewmodel.dart';
import 'package:stacked/stacked.dart';


class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, model, child) => Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(children: <Widget>[
            Image.asset('images/log.png'),
            const GbaleSpacing.height(15),
            CustomText(
              text: 'Sign Up',
              textStyle: textheme.bodySmall,
            ),
            const GbaleSpacing.height(20),
            GbaleTextFormFieldWidget(
              hintText: 'First name',
            ),
            const GbaleSpacing.height(20),
            GbaleTextFormFieldWidget(
              hintText: 'Second name',
            ),
            const GbaleSpacing.height(20),
            GbaleTextFormFieldWidget(
              hintText: 'Email',
            ),
            const GbaleSpacing.height(20),
            GbaleTextFormFieldWidget(
              hintText: 'Password',
            ),
            const GbaleSpacing.height(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => model.navigateToLogin(),
                  child: CustomText(
                    text: 'Back',
                    textStyle: textheme.bodySmall!.copyWith(color:const Color(0xFF020313)),
                  ),
                ),
              ],
            ),
            const GbaleSpacing.height(20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(
                label: 'Login',
                onTap: () {},
              ),
            ]),
          ]),
        ),
      )),
    );
  }
}
