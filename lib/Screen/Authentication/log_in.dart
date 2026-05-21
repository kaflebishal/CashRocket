

import 'package:cash_rocket/Screen/Authentication/forgot_password.dart';
import 'package:cash_rocket/Screen/Authentication/sign_up.dart';
import 'package:cash_rocket/Screen/Constant%20Data/button_global.dart';
import 'package:cash_rocket/Screen/Home%20Screen/home.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/constant.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Log In',style: kTextStyle.copyWith(color: Colors.white),),
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: context.height() / 1.6,
                    width: context.width() / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/cash.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Cash Rocket',
                          style: kTextStyle.copyWith(
                              color: kTitleColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40.0),
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
                        AppTextField(
                          textStyle: kTextStyle.copyWith(color: kTitleColor),
                          cursorColor: kTitleColor,
                          textFieldType: TextFieldType.PASSWORD,
                          decoration: kInputDecoration.copyWith(
                            labelText: 'Password',
                            hintText: '********',
                            labelStyle:
                                kTextStyle.copyWith(color: kTitleColor),
                            hintStyle:
                                kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: kMainColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                  value: isChecked,
                                  onChanged: (val) {
                                    setState(
                                      () {
                                        isChecked = val!;
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  'Remember Me',
                                  style:
                                      kTextStyle.copyWith(color: kTitleColor),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ).onTap(
                                  () =>
                                      const ForGotPassWord().launch(context),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        ButtonGlobal(
                            buttontext: 'Log In',
                            buttonDecoration: kButtonDecoration,
                            onPressed: () {
                              setState(() {
                                const Home().launch(context);
                              });
                            }),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: TextSpan(
                            text: 'Haven’t any account?',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                            children: [
                              TextSpan(
                                text: ' Sign Up',
                                style: kTextStyle.copyWith(color: kMainColor),
                              ),
                            ],
                          ),
                        ).onTap(
                          () => const SignUp().launch(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
