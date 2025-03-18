import 'package:flutter/material.dart';
import 'package:untitled/detailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF009FFD), Color(0xFF2A2A72)],
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // Circular food image
            ClipOval(
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/588b/16e9/12de7340129075eaa8006ad96cefb5b2?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ceZPgXZwfQiXaKH-53HlPSUFzbGymZgpP7YDHWtPze1XSl7fhsIpy7qTXyiUP3XN9pJo5onoXiRw0V0kLbqxYKOexGZle8Qg0KJdIg0r1KetTxreE6hEGkPGgRATsSlODrVuWJ-RtHk0-EeitivgFwAOCyrBo8eYtFf8ByFDTIkfZiewIcU-s5yi6xt3ivSzaSNRkIbr~ePs-0zwa1vkHT9rUoLLqZ~Pr38~39s~dFhdHc3V47DldDUXoN3PE-pEJotH1IThVE6ZjnZamaFByOQZtOhQoZkmrYlr8SUSNQ2bRsPU3f-xL3Wkbs9CvgpjlGq7bRB1z6gWuHea52XxLA__',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),

            // Title
            const Text(
              "Enjoy\nYour Food",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),

            // "Get Started" button
            ElevatedButton(
              onPressed: () {
                // Navigate to the next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodDetailsPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
