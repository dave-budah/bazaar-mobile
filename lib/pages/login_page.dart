import 'package:bazaar/components/custom_button.dart';
import 'package:bazaar/components/custom_textfield.dart';
import 'package:bazaar/pages/dashboard.dart';
import 'reset_password.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final mobileNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final Function()? onTap;

   LoginPage({super.key, this.onTap});


  void signUserIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
            Image.asset(
              'assets/images/purse.png', // Path to your logo
              width: 60, // Adjust the width and height as needed
              height: 60,
            ),
              const SizedBox(height: 15,),
                Text(
                  'Welcome back!',
                  style: TextStyle(color: Colors.grey[700],
                  fontSize: 16),
                ),
              const SizedBox(height: 30,),

              CustomTextfield(
                controller: mobileNumberController,
                hintText: 'Mobile number',
                obscureText: false,
              ),
              const SizedBox(height: 15,),
              CustomTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot password?',
                    style: TextStyle(color: Colors.grey[600]),),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: () {
                        // Navigate to ResetPasswordPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetPasswordPage(),
                          ),
                        );
                      },
                      child: Text('Reset here',
                        style: TextStyle(color: Colors.green[600]),),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),

            CustomButton(
              text: 'Login',
              onTap: () {
                signUserIn(context);
              },
            ),

              const SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bazaar 2024',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green[600],
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
