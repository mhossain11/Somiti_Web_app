import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 420,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// TOP
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back! 👋",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F172A),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Sign in to your member account",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff64748B),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F5F9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.shield_outlined,
                        color: Color(0xff94A3B8),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                /// EMAIL
                const Text(
                  "Email / Phone",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff334155),
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  decoration: InputDecoration(
                    hintText: "rahim@gmail.com",
                    prefixIcon: const Icon(Icons.mail_outline),
                    filled: true,
                    fillColor: const Color(0xffF8FAFC),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xffCBD5E1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xffCBD5E1),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                /// PASSWORD
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff334155),
                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "••••••••••",
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    filled: true,
                    fillColor: const Color(0xffF8FAFC),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xffCBD5E1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xffCBD5E1),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// REMEMBER + FORGOT
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff475569),
                          ),
                        ),
                      ],
                    ),

                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                /// BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
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
                            Color(0xff2563EB),
                            Color(0xff0891B2),
                          ],
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                /// DEMO BOX
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xffF8FAFF),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xffD6E4FF),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text("🎯"),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Demo: Click the shield icon (top right) for admin access",
                          style: TextStyle(
                            color: Color(0xff2563EB),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                /// REGISTER
                Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff64748B),
                      ),
                      children: [
                        TextSpan(
                          text: "Not a member? ",
                        ),
                        TextSpan(
                          text: "Register now",
                          style: TextStyle(
                            color: Color(0xff2563EB),
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }
}