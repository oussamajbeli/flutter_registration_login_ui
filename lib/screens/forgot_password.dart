import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginregistration/pallete.dart';
import 'package:loginregistration/widgets/background_image.dart';
import 'package:loginregistration/widgets/rounded_button.dart';
import 'package:loginregistration/widgets/text_field.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      
      children: [
        BackgroundImage(image: 'assets/images/ab2.jpg'),
        Scaffold(
          
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kWhite,
                  )),
              title: Text('Forgot Password', style: kBodyText),
              centerTitle: true,
            ),
            
            body: Center(
              child: Column(
                
                children: [
                SizedBox(
                  height:size.height * 0.24,
                ),
                Container(
                  
                  height: size.height * 0.08,
                   width : size.width * 0.8,
                   child: Text(
                     "Enter your email we will send instruction to reset your password ",
                     style:kBodyText,
                     ),
                ),
                SizedBox(height:20),
                TextInputField(icon: FontAwesomeIcons.envelope, 
                hint: 'Email',
                inputType:TextInputType.emailAddress,
                inputAction: TextInputAction.done,
                ), 
                SizedBox(height: 20.0),
                RoundedButton(
                  buttonName: 'Send'
                )

              ]),
            )
            )
      ],
    );
  }
}
