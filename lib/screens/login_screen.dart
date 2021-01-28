import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginregistration/pallete.dart';
import 'package:loginregistration/widgets/background_image.dart';
import 'package:loginregistration/widgets/password_input.dart';
import 'package:loginregistration/widgets/rounded_button.dart';
import 'package:loginregistration/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image:'assets/images/im.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                  child: Center(
                child: Text(
                  "LOGIN UI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'EMAIL',
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'PASSWORD',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, 'ForgotPassword'),
                      child: Text("Forgot Password", style: kBodyText)),
                  SizedBox(
                    height: 26,
                  ),
                  RoundedButton(buttonName: 'Login'),
                  SizedBox(height: 20),
                ],
              ),
              GestureDetector(
                onTap : ()=>  Navigator.pushNamed(context,'CreateNewAccount'),
                child: Container(
                    child: Text("Create New Account", style: kBodyText),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(width: 1, color: kWhite)))),
              ),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}

