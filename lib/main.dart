import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CoupleLinkApp());
}

class CoupleLinkApp extends StatelessWidget {
  const CoupleLinkApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoupleLink',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
