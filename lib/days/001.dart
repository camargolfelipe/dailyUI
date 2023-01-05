import 'package:daily_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/001/background.png"),
                fit: BoxFit.fill),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [mainColor, secondColor, thirdColorWithWhite],
            )),
        child: Column(
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 5,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                height: MediaQuery.of(context).size.height * .45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: ice.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20)),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Text(
                      "Welcome Back",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                  FormSignIn('Email', 'Enter your Email'),
                  FormSignIn('Password', '****************'),
                  Container(
                    margin: const EdgeInsets.only(top: 8.0, right: 16.0),
                    width: double.infinity,
                    child: Text("Forgot password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: secondColor,
                            fontSize: 12)),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24),
                    height: MediaQuery.of(context).size.height * .075,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondColor),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: ice,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(),
                  ),
                  Text(
                    "Sign in with",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: grey.withOpacity(0.5),
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32.0, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          size: 40,
                          color: blue,
                        ),
                        Icon(
                          Icons.apple_outlined,
                          size: 40,
                          color: black,
                        ),
                        Icon(
                          Icons.flutter_dash,
                          size: 40,
                          color: red,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an account? ",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: grey.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          " Sign up",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  color: mainColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormSignIn extends StatelessWidget {
  String label;
  String hint;
  FormSignIn(this.label, this.hint, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: TextField(
          style: TextStyle(fontSize: 14, color: mainColor),
          decoration: InputDecoration(
            label: Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: mainColor.withOpacity(0.8)),
            ),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 12, color: grey.withOpacity(0.5)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          )),
    );
  }
}
