import 'package:flutter/material.dart';
import 'package:tourism_app/Tourism_App_Ui/Presentation/view/travel_main_page.dart';

class Travel_Login extends StatelessWidget {
  const Travel_Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
"https://media.istockphoto.com/id/1151755587/photo/sunrise-behind-a-tropical-island-in-the-maldives.jpg?s=612x612&w=0&k=20&c=1P-LXAZfbvIA58uLLRU8zTiwBSnR01zDzZAChe_wM7c="                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Login button
            Positioned(
              left: 0,
              right: 0,
              bottom: 40, // Adjust this value according to your UI
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Travel_Main(),
                      ),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
