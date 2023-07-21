import 'package:flutter/material.dart';
import 'package:form/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
          (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF9775FA),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 222,
              height: 222,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('STYLISH', style: GoogleFonts.firaSans(fontSize: 50, fontWeight: FontWeight.w400, color: Colors.white),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Find Your Slyle', style: GoogleFonts.sacramento(fontSize: 40, fontWeight: FontWeight.w400, color: Colors.white),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
