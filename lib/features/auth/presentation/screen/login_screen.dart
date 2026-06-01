import 'package:flutter/material.dart';
import 'package:somiti_app/features/dashboard/presentation/screen/dashboard.dart';
import '../../../../responsive.dart';
import '../widgets/login_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Responsive.isDesktop(context) ? SizedBox(
          height: Responsive.dynamicHeight(context, 1),
          child: Row(
                  children: [
                    ///Web & Tablet
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,

                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(11, 143, 58, 1),
                              Color.fromRGBO(220, 38, 38, 1),
                            ],
                          ),
                        ),
                        child: Column(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child:  SingleChildScrollView(
                        child: LoginWidget(
                        emailController: emailController,
                        passwordController: passwordController,
                        onTap: () {  },
                        onTapRegister: () {  },
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                        },
                                            ),
                      ),),
                  ],
                ),
        )
            :
              ///MOBILE
        LoginWidget(
          emailController: emailController,
          passwordController: passwordController,
          onTap: () {  },
          onTapRegister: () {  },
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
          },
        ),
      ),
    );
  }
}
