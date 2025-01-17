import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3), () {
      // Check for user data before deciding route
      if (userData?.getString('email') == 'ttt@gmail.com') {
        Get.offNamed('/home'); // Navigate to home if logged in
      } else {
        Get.offNamed('/login'); // Navigate to login if not logged in
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/cart.json'),
      ),
    );
  }
}
