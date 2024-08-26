import 'package:dronemanager/custom%20widgets/textfield.dart';
import 'package:dronemanager/pages/homepage.dart';
import 'package:dronemanager/utils/textformat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SafeArea(
                child: Text(
              'Sign In',
              style: signtext,
            )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sign In to gain access to Dronehub related work information',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have an account?'),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign Up',
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
                        builder: (BuildContext context) => const MyHomepage(),
                        ),
                      
                        );
              },
              child: Container(
                padding: EdgeInsets.all(25),
                width: 400,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
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
