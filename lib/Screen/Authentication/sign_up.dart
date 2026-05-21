import 'package:cash_rocket/Screen/Constant%20Data/button_global.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/constant.dart';
import 'log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Sign Up',style: kTextStyle.copyWith(color: Colors.white),),
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
                  const SizedBox(height: 20.0,),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: context.height() / 1.2,
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
                        const SizedBox(height: 30.0),
                        AppTextField(
                          showCursor: false,
                          textFieldType: TextFieldType.NAME,
                          decoration: kInputDecoration.copyWith(
                            labelText: 'User Name',
                            labelStyle:
                                kTextStyle.copyWith(color: kTitleColor),
                            hintText: 'Ibneriead',
                            hintStyle:
                                kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        AppTextField(
                          showCursor: false,
                          textFieldType: TextFieldType.NAME,
                          decoration: kInputDecoration.copyWith(
                            labelText: 'Full Name',
                            labelStyle:
                                kTextStyle.copyWith(color: kTitleColor),
                            hintText: 'Ibne Riead',
                            hintStyle:
                                kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        const SizedBox(height: 15.0),
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
                        const SizedBox(height: 15.0),
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
                        const SizedBox(height: 15.0),
                        AppTextField(
                          showCursor: false,
                          textFieldType: TextFieldType.NAME,
                          decoration: kInputDecoration.copyWith(
                            labelText: 'Invitation Code',
                            labelStyle:
                                kTextStyle.copyWith(color: kTitleColor),
                            hintText: 'Enter invitation code',
                            hintStyle:
                                kTextStyle.copyWith(color: kGreyTextColor),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        ButtonGlobal(
                            buttontext: 'Sign Up',
                            buttonDecoration: kButtonDecoration,
                            onPressed: () {
                              setState(() {
                                const LogIn().launch(context);
                              });
                            }),
                        const SizedBox(height: 10.0),
                        RichText(
                          text: TextSpan(
                            text: 'Already have an account',
                            style: kTextStyle.copyWith(color: kGreyTextColor),
                            children: [
                              TextSpan(
                                text: ' Sign In',
                                style: kTextStyle.copyWith(color: kMainColor),
                              ),
                            ],
                          ),
                        ).onTap(
                          () => const LogIn().launch(context),
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
