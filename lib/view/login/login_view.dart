import 'package:flutter/material.dart';
import 'package:gbale/core/constants/gbale_colors.dart';
import 'package:gbale/shared/custom_button.dart';
import 'package:gbale/shared/gbale_textform.dart';
import 'package:gbale/shared/custom_text.dart';
import 'package:gbale/shared/gbale_spacing.dart';
import 'package:gbale/view/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final textheme = Theme.of(context).textTheme;
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const GbaleSpacing.height(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/log.png'),
                    const SizedBox(width: 10),
                  ],
                ),
                const GbaleSpacing.height(20),
                CustomText(
                  text: 'Login',
                  textStyle: textheme.bodyMedium!.copyWith(
                    color: Colors.green,
                  ),
                ),
                const GbaleSpacing.height(50),
                GbaleTextFormFieldWidget(
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'Email',
                ),
                const GbaleSpacing.height(50),
                GbaleTextFormFieldWidget(
                  prefixIcon: const Icon(Icons.visibility),
                  hintText: 'Password',
                ),
                const GbaleSpacing.height(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => model.navigateToForgotPassword(),
                      child: CustomText(
                          text: 'Forgot Password',
                          textStyle: textheme.bodySmall!
                              .copyWith(color: const Color(0xFF020313))),
                    ),
                    const GbaleSpacing.width(10),
                    InkWell(
                      onTap: () => model.navigateToSignUpView(),
                      child: CustomText(
                        text: 'Signup Now',
                        textStyle: textheme.bodySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                const GbaleSpacing.height(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      label: 'Login',
                      textStyle:
                          textheme.bodyLarge!.copyWith(color: Colors.white),
                      onTap: () => model.login(),
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
