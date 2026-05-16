import 'package:flutter/material.dart';
import 'package:somiti_app/features/auth/presentation/widgets/text_field.dart';

import '../../../../core/res/app_images.dart';
import '../../../../core/res/style/app_image_size.dart';
import '../../../../responsive.dart';

class LoginWidget extends StatelessWidget {
   LoginWidget({
    super.key,
    required this.emailController,
    required this.passwordController,
     required this.onTap,
     required this.onTapRegister,
     required this.onPressed,
   });

  TextEditingController  emailController;
  TextEditingController  passwordController;
   void Function()? onTap;
   void Function()? onTapRegister;
   void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: Responsive.dynamicHeight(context, 0.10),
              ),
              child: Center(
                child: Image.asset(
                  AppImages.logo,
                  fit: BoxFit.fitHeight,
                  height: AppImageSize.xl,
                  width: AppImageSize.image200,
                ),
              ),
            ),
          ],
        ),

        Card(
          color: Colors.white,
          elevation: 5,
          child: Container(
            width:  Responsive.isMobile(context)
                ? Responsive.dynamicWidth(context, 0.80)
                : 400,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// TOP
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back!",
                            style: TextStyle(
                              fontSize: Responsive.isMobile(context)
                                  ? 20
                                  : 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: Color(0xff0F172A),
                            ),
                          ),

                          Text(
                            "Sign in to your member account",
                            style: TextStyle(
                              fontSize: Responsive.isMobile(context)
                                  ? 12
                                  : 14, //14,
                              fontFamily: 'Poppins',
                              color: Color(0xff64748B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                /// EMAIL
                Center(
                  child: CustomTextField(
                    controller: emailController,
                    prefixIcon: Icons.email_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email';
                      }
                      if (!value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      if (!value.contains('.')) {
                        return 'Please enter a valid email';
                      }
                      final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                      if (!emailRegex.hasMatch(value.trim())) {
                        return 'Enter a valid email address';
                      }
                    },
                    labelText: 'Email',
                  ),
                ),

                SizedBox(height: 10),

                ///PASSWORD
                Center(
                  child: CustomTextFieldPassword(
                    controller: passwordController,
                    prefixIcon: Icons.lock_outline,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }

                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }

                      // ✅ Strong password regex (optional)
                      /* final strongRegex = RegExp(
                            r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                        if (!strongRegex.hasMatch(value)) {
                          return 'Include upper, lower, number & special character';
                        }*/

                      return null; // ✅ valid
                    },
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 12),
                /// FORGOT
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: onTap,
                      borderRadius: BorderRadius.circular(8),
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 12),

                ///BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(11, 143, 58, 1),
                            Color.fromRGBO(220, 38, 38, 1),
                          ],
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                /// REGISTER
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff64748B),
                      ),
                      children: [
                        const TextSpan(text: "Not a member? "),

                        WidgetSpan(
                          child: GestureDetector(
                            onTap: onTapRegister,
                            child: const Text(
                              "Register now",
                              style: TextStyle(
                                color: Color(0xff2563EB),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
