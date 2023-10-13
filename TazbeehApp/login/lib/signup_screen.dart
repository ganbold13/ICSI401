import 'package:flutter/material.dart';
import 'package:login/components/action_button.dart';
import 'package:login/components/bordered_icon_button.dart';
import 'package:login/loginscreen.dart';

class SignUpScreen extends StatelessWidget {
  final double space = 36.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Container(
            width: 500,
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(space),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 350,
                    width: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/signup.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Register",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: space),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButtonWidget(imagePath: 'assets/images/apple.png'),
                      IconButtonWidget(imagePath: 'assets/images/facebook.png'),
                      IconButtonWidget(imagePath: 'assets/images/google.png')
                    ],
                  ),
                  SizedBox(height: space),
                  const Text("Or, register with email"),
                  SizedBox(height: space),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email ID',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(height: space),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                    ),
                  ),
                  SizedBox(height: space),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'FullName',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(height: space),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'CompanyName',
                      prefixIcon: Icon(Icons.house_outlined),
                    ),
                  ),
                  SizedBox(height: space),
                  const ActionButton(buttonText: "Register"),
                  SizedBox(height: space),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Have an account?'),
                      TextButton(
                        onPressed: () {
                          // Navigate to the sign-up screen
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LoginScreen()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
