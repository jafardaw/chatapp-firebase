import 'package:chatappfr/Feature/auth/presentation/manger/services/login_with_google.dart';
import 'package:chatappfr/Feature/auth/presentation/view/login_view.dart';
import 'package:chatappfr/core/util/styels.dart';
import 'package:chatappfr/core/widget/custom_botton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Congratulation\nYou have successfully Login",
                textAlign: TextAlign.center, style: Styles.textStyle20),

            CustomButton(
                onTap: () async {
                  await FirebaseServices().googleSignOut();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                text: "Log Out"),
            // for google sign in ouser detail
            // Image.network("${FirebaseAuth.instance.currentUser!.photoURL}"),
            // Text("${FirebaseAuth.instance.currentUser!.email}"),
            // Text("${FirebaseAuth.instance.currentUser!.displayName}")
          ],
        ),
      ),
    );
  }
}
