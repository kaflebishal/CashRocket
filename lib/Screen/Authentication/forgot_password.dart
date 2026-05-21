import 'package:cash_rocket/Screen/Authentication/log_in.dart';
import 'package:cash_rocket/Screen/Constant%20Data/button_global.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/constant.dart';

class ForGotPassWord extends StatefulWidget {
  const ForGotPassWord({Key? key}) : super(key: key);

  @override
  State<ForGotPassWord> createState() => _ForGotPassWordState();
}

class _ForGotPassWordState extends State<ForGotPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Reset Password',style: kTextStyle.copyWith(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: const AssetImage('images/bg.png'),
            width: context.width(),
            height: context.height(),
            fit: BoxFit.cover,
          ),

          Container(
            padding: const EdgeInsets.all(10.0),
            height: context.height() / 3.0,
            width: context.width() / 1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                RichText(
                  text: TextSpan(
                    text:
                        'Please enter your email address below to recive your',
                    style: kTextStyle.copyWith(color: kTitleColor),
                    children: [
                      TextSpan(
                        text: ' password',
                        style: kTextStyle.copyWith(color: kMainColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                AppTextField(
                  showCursor: false,
                  textFieldType: TextFieldType.EMAIL,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'Email',
                    labelStyle:
                        kTextStyle.copyWith(color: kTitleColor),
                    hintText: 'allison@gmail.com',
                    hintStyle:
                        kTextStyle.copyWith(color: kGreyTextColor),
                  ),
                ),
                const SizedBox(height: 20.0),
                ButtonGlobal(
                    buttontext: 'Continue ',
                    buttonDecoration: kButtonDecoration,
                    onPressed: () {
                      setState(() {
                        const LogIn().launch(context);
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
