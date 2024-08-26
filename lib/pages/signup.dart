import 'package:dronemanager/custom%20widgets/textfield.dart';
import 'package:dronemanager/pages/signin.dart';
import 'package:dronemanager/utils/textformat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    int _sliding = 0;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SafeArea(
                child: Text(
              'Create Your Account',
              style: signtext,
            )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sign Up to gain access to Dronehub related work information',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            CupertinoSlidingSegmentedControl(
              children: const {
                0: Text('Technical'),
                1: Text('Sales'),
                2: Text('Accounts'),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                setState(() {
                  _sliding = newValue!;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const AccTxtBox(
              label: Text('Email'),
              suffixIcon: null,
              obscureText: false,
              controller: null,
            ),
            const SizedBox(
              height: 20,
            ),
            const AccTxtBox(
              label: Text('Password'),
              suffixIcon: Icon(Icons.remove_red_eye),
              obscureText: true,
              controller: null,
            ),
            const SizedBox(
              height: 20,
            ),
            const AccTxtBox(
              label: Text('Confirm Password'),
              suffixIcon: Icon(Icons.remove_red_eye),
              obscureText: true,
              controller: null,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SignIn(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(25),
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Center(child: Text('Sign Up')),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
