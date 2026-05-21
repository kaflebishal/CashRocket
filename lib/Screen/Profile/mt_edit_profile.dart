import 'package:cash_rocket/Screen/Constant%20Data/button_global.dart';
import 'package:cash_rocket/Screen/Home%20Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/constant.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          ),
        ),
        backgroundColor: kMainColor,
        elevation: 0.0,
        title: Text(
          'Edit Profile',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              AppTextField(
                  cursorColor: kMainColor,
                  textFieldType: TextFieldType.NAME,
                  textAlign: TextAlign.start,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'User Name',
                    labelStyle: kTextStyle.copyWith(color: kTitleColor),
                    hintText: 'Ibneriead',
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  )),
              const SizedBox(height: 20.0),
              AppTextField(
                  cursorColor: kMainColor,
                  textFieldType: TextFieldType.NAME,
                  textAlign: TextAlign.start,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'Full  Name',
                    labelStyle: kTextStyle.copyWith(color: kTitleColor),
                    hintText: 'Ibne Riead',
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  )),
              const SizedBox(height: 20.0),
              AppTextField(
                  cursorColor: kMainColor,
                  textFieldType: TextFieldType.EMAIL,
                  textAlign: TextAlign.start,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'Email',
                    labelStyle: kTextStyle.copyWith(color: kTitleColor),
                    hintText: 'ibneriead@gmail.com',
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  )),
              const SizedBox(height: 20.0),
              AppTextField(
                  cursorColor: kMainColor,
                  textFieldType: TextFieldType.PASSWORD,
                  textAlign: TextAlign.start,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'Password',
                    labelStyle: kTextStyle.copyWith(color: kTitleColor),
                    hintText: '********',
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  )),
              const SizedBox(height: 20.0),
              ButtonGlobal(
                buttontext: 'Save',
                buttonDecoration: kButtonDecoration,
                onPressed: () {
                  const Home().launch(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
