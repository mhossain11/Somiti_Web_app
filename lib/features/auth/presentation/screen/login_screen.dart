import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobiti_app/core/res/app_images.dart';
import 'package:sobiti_app/core/res/style/text_style.dart';
import 'package:sobiti_app/responsive.dart';

import '../../../../core/res/style/app_image_size.dart';
import '../../../../core/res/style/app_insets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive.isDesktop(context)? Row(
          children: [
        Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(30, 58, 95, 1),
                    Color.fromRGBO(29, 78, 216, 1),
                    Color.fromRGBO(8, 145, 178, 1),
                  ],
                ),
              ),
              child: Column(


              ),
            )),
        Expanded(
            child: Card())
      
      ]):Column(
        //mainAxisSize: MainAxisSize.min,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: Insets.size50,
                    left: Insets.sm,
                    right: Insets.sm),
                child: Center(
                  child: Image.asset(AppImages.logo,
                    fit: BoxFit.fitHeight,
                    height: AppImageSize.xl,
                    width: AppImageSize.image200,),
                ),
              ),
            ],
          ),
          Card(
            elevation: 2,
            child: Container(
              width: 420,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
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
                                fontSize:Responsive.isMobile(context)? 20:24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                color: Color(0xff0F172A),
                              ),
                            ),

                            Text(
                              "Sign in to your member account",
                              style: TextStyle(
                                fontSize: Responsive.isMobile(context)? 12:14,//14,
                                fontFamily: 'Poppins',
                                color: Color(0xff64748B),
                              ),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: (){},
                          icon: Icon(Icons.shield_outlined),
                          /*style: IconButton.styleFrom(
                            backgroundColor: const Color(0xFFF1F5F9),
                          shape: const CircleBorder(),
                          ),*/
                        style: IconButton.styleFrom(
                          backgroundColor: const Color(0xFFF1F5F9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      )
                      ,
                    ],
                  ),

                  const SizedBox(height: 32),

                  /// EMAIL


                  const SizedBox(height: 10),
                ],
              ),

            ),
          )
        ],
      ),

    );
  }
}
