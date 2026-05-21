import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/button_global.dart';
import '../../Constant Data/constant.dart';
import '../home.dart';

class Redeem extends StatefulWidget {
  const Redeem({Key? key}) : super(key: key);

  @override
  State<Redeem> createState() => _RedeemState();
}

class _RedeemState extends State<Redeem> {
  List<String> logoList = [
    'images/paypal.png',
    'images/bkash.png',
    'images/paytm.png',
    'images/stripe.png',
  ];
  List<String> bgList = [
    'images/bg3.png',
    'images/bg1.png',
    'images/bg4.png',
    'images/bg2.png',
  ];

  List<String> bankList = [
    'PayPal',
    'bkash',
    'Paytm',
    'Stripe',
  ];

  List<String> listTitle = [
    'Minimum 1000 Points',
    'Minimum 1000 Points',
    'Minimum 1000 Points',
    'Minimum 1000 Points',
  ];

  bool isBalanceShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Redeem',
          style: kTextStyle.copyWith(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white.withOpacity(0.3),
                border: Border.all(
                  color: Colors.white,
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedOpacity(
                    opacity: !isBalanceShow ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: kMainColor,
                        border: Border.all(color: Colors.white, width: 2.0),
                      ),
                      child: const Icon(
                        FeatherIcons.dollarSign,
                        size: 15.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Text(isBalanceShow ? '\$1000' : 'Balance'),
                  const SizedBox(width: 5.0),
                  AnimatedOpacity(
                    opacity: isBalanceShow ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: kMainColor,
                        border: Border.all(color: Colors.white, width: 2.0),
                      ),
                      child: const Icon(
                        FeatherIcons.dollarSign,
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ).onTap(() {
              setState(() {
                isBalanceShow = !isBalanceShow;
              });
            }),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              HorizontalList(
                  padding: EdgeInsets.zero,
                  spacing: 10.0,
                  itemCount: bgList.length,
                  itemBuilder: (_, i) {
                    return Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          height: 115,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                                image: AssetImage(bgList[i]), fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  logoList[i],
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                bankList[i],
                                style: kTextStyle.copyWith(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                listTitle[i],
                                style: kTextStyle.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  }),
              const SizedBox(height: 20.0),
              Text(
                '1000 Points = \$ 1',
                style: kTextStyle.copyWith(
                    color: kTitleColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: kGreyTextColor.withOpacity(0.1),width: 1.0)
                ),
                child: AppTextField(
                  cursorColor: kMainColor,
                  textFieldType: TextFieldType.NAME,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 25),
                      border: InputBorder.none,
                      hintText: 'Enter Points',
                      hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: kGreyTextColor.withOpacity(0.1),width: 1.0)
                ),
                child: AppTextField(
                  cursorColor: kMainColor,
                  textFieldType: TextFieldType.NAME,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 25),
                    border: InputBorder.none,
                    hintText: 'Withdraw Account',
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  ),
                ),

              ),
              const SizedBox(height: 20.0),
              ButtonGlobal(
                buttontext: 'Withdraw ',
                buttonDecoration: kButtonDecoration,
                onPressed: (()=>const Home().launch(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
