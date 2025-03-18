import 'package:flutter/material.dart';
import 'sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 120, 150),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 20),
                _buildTextField("Full Name"),
                _buildTextField("Password", isPassword: true),
                _buildTextField("Email"),
                _buildTextField("Mobile Number"),
                SizedBox(height: 20),
                _buildButton(context, "Sign Up"),
                SizedBox(height: 20),
                _buildSocialLogin(),
                SizedBox(height: 10),
                _buildBottomText(context, "Sign In"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: "Enter Your $label",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: isPassword ? Icon(Icons.visibility_off) : null,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 0, 110, 150),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLogin() {
    return Column(
      children: [
        Text("OR", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                size: 40,
                color: Colors.blue, // Facebook color
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.google,
                size: 50,
                color: const Color.fromARGB(255, 63, 25, 25),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomText(BuildContext context, String actionText) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()),
          );
        },
        child: Text(
          "Don't have an account? $actionText",
          style: TextStyle(
            color: const Color.fromARGB(255, 4, 51, 67),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
