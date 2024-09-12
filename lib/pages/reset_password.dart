import 'package:bazaar/components/custom_button.dart';
import 'package:bazaar/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {

  final mobileNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final Function()? onTap;
  void resetPassword() {}


  ResetPasswordPage({super.key, this.onTap});

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
                'Enter your mobile number!',
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

              const SizedBox(height: 15,),

              CustomButton(
                text: 'Submit',
                onTap: resetPassword,
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
