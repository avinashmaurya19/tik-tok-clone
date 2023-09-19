import 'package:flutter/material.dart';
import 'package:tiktok_clone/constant.dart';
import 'package:tiktok_clone/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tik tok clone',
              style: TextStyle(
                  fontSize: 32,
                  color: buttonColor,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: height * .01,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 32,
                  // color: buttonColor,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: height * .021,
            ),
            Container(
              child: TextInputField(
                controller: _emailController,
                labelText: 'Email',
                icon: Icons.email,
                isobscure: false,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Container(
              child: TextInputField(
                controller: _passwordController,
                labelText: 'Password',
                icon: Icons.lock,
                isobscure: true,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Container(
              height: height * .05,
              width: width,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => authController.loginUser(
                  _emailController.text,
                  _passwordController.text,
                ),
                child: const Center(
                  child: Text(
                    'LOgin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    print('Register');
                  },
                  child: Text(
                    'Register ',
                    style: TextStyle(fontSize: 20, color: buttonColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
