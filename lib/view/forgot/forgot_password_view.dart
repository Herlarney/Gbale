import 'package:gbale/shared/custom_button.dart';
import 'package:gbale/shared/gbale_textform.dart';
import 'package:gbale/view/forgot/forgot_password_viewmodel.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      viewModelBuilder: () => ForgotPasswordViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/log.png'),
                  ],
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: 'Verify PhoneNumber',
                  textStyle: textheme.bodyMedium,
                ),
                const SizedBox(height: 50),
                GbaleTextFormFieldWidget(
                  hintText: 'Email',
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      label: 'Submit',
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
