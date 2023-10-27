import 'package:flutter/material.dart';

import './screens/splash.dart';
import 'screens/add_expense.dart';
import 'screens/bill_details.dart';
import 'screens/bill_payment.dart';
import 'screens/connect_wallet.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/onboarding.dart';
import 'screens/register.dart';
import 'screens/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Income and Expenses',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
            background: Colors.white,
            onBackground: Color(0xFFEEEEEE),
            primary: Color(0xff429690),
            onPrimary: Colors.white,
            secondary: Color(0xFF32819A),
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.redAccent,
            surface: Colors.white,
            onSurface: Colors.black,
            brightness: Brightness.light),
        textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: TextStyle(fontSize: 24),
            displaySmall: TextStyle(fontSize: 18),
            labelSmall: TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 165, 165, 165))),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnBoardingScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/wallet': (context) => const WalletScreen(),
        '/connectwallet': (context) => const ConnectWalletScreen(),
        '/addexpenses': (context) => const AddExpenseScreen(),
        '/billdetails': (context) => const BillDetailsScreen(),
        '/billpayment': (context) => const BillPaymentScreen(),
      },
    );
  }
}
