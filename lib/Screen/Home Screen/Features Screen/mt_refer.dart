import 'package:cash_rocket/Screen/Constant%20Data/button_global.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/constant.dart';
import '../home.dart';

class Refer extends StatefulWidget {
  const Refer({Key? key}) : super(key: key);

  @override
  State<Refer> createState() => _ReferState();
}

class _ReferState extends State<Refer> {
  final TextEditingController _textController =
      TextEditingController(text: '5FLK2M');

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _textController.text));
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Invitation Code Copied'),
    ));
  }

  bool isBalanceShow = false;

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Refer',style: kTextStyle.copyWith(color: Colors.white),),
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
              padding: const EdgeInsets.all(20.0),
              height: context.height() / 1.5,
              width: context.width() / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Invite Your Friends',
                    style: kTextStyle.copyWith(
                        color: kTitleColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    'Invite your friends to use Cash Rocket and you will receive 100 points for each one',
                    style: kTextStyle.copyWith(color: kGreyTextColor),
                    maxLines: 5,
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    height: 235,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/refferbanner1.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(
                            color: kGreyTextColor.withOpacity(0.1),
                            width: 1.0)),
                    child: AppTextField(
                      readOnly: true,
                      textFieldType: TextFieldType.NAME,
                      controller: _textController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '5FLK2M',
                          hintStyle: kTextStyle.copyWith(
                              color: kGreyTextColor),
                          suffixIcon: const Icon(FeatherIcons.copy,
                                  color: kMainColor)
                              .onTap(() {
                            setState(() {
                              _copyToClipboard();
                            });
                          })),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ButtonGlobal(
                    buttontext: 'Invite Now',
                    buttonDecoration: kButtonDecoration,
                    onPressed: (() => const Home().launch(context)),
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
