import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/login_screen.dart';
import 'package:flutter_widgets/theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floxly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColor.bgNavy,
          colorScheme: ColorScheme.fromSeed(
              seedColor: AppColor.primaryEnd, brightness: Brightness.dark)),
      home: const LoginScreen(),
    );
  }
}
