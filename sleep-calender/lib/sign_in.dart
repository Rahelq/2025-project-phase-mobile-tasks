import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatelessWidget {
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
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 120, 150),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "Korem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
                SizedBox(height: 20),
                _buildTextField("Email"),
                _buildTextField("Password", isPassword: true),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?"),
                  ),
                ),
                SizedBox(height: 10),
                _buildButton(context, "Sign In"),
                SizedBox(height: 20),
                _buildSocialLogin(),
                SizedBox(height: 10),
                _buildBottomText(context, "Sign Up"),
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
          backgroundColor: const Color.fromARGB(255, 0, 120, 150),
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
                size: 40,
                color: Colors.red, // Google color
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
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
        },
        child: Text(
          "Don't have an account? $actionText",
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 127, 183),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
