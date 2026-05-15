import 'package:flutter/material.dart';
import 'package:sobiti_app/features/auth/presentation/screen/login_screen.dart';
import 'package:sobiti_app/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),

            SizedBox(height: 20),

           !Responsive.isDesktop(context)? ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ): ElevatedButton(
             onPressed: () {},
             child: Text("Login Out"),
           )
          ],
        ),
      ),
    );
  }
}
