import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'login.dart';
import 'registration.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPages(),
        '/register': (context) => const ResgiterPage(),
        '/dashboard': (context) => const DashBoardPage(),
      },
    );
  }
}
