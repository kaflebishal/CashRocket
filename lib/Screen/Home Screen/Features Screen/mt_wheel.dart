import 'package:cash_rocket/Screen/Constant%20Data/button_global.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../Constant Data/constant.dart';
import '../home.dart';

class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  bool isBalanceShow = false;

  void showRewardPopUp() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: const DecorationImage(
                              image: AssetImage('images/rewardbanner.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20.0),
                              Text(
                                'Congratulations',
                                style: kTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                '10 Points received',
                                style: kTextStyle.copyWith(color: Colors.white),
                                maxLines: 2,
                              ),
                              const SizedBox(height: 20.0),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      colors: [
                                        Color(0xFFFFBF53),
                                        Color(0xFFFF8244),
                                      ]),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0),
                                  child: Text(
                                    'Ok',
                                    style: kTextStyle.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ).onTap(() => {
                                    finish(context),
                                    const Home().launch(context),
                                  })
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image(
              image: const AssetImage('images/bg.png'),
              width: context.width(),
              height: context.height(),
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        FeatherIcons.arrowLeft,
                        color: Colors.white,
                      ).onTap(
                        () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        'Wheel',
                        style: kTextStyle.copyWith(
                            color: Colors.white, fontSize: 18.0),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 30.0,
                            bottom: 15.0,
                            top: 15.0),
                        child: Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white.withOpacity(0.3),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedOpacity(
                                opacity: !isBalanceShow ? 1.0 : 0.0,
                                duration:
                                    const Duration(milliseconds: 1000),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(30.0),
                                    color: kMainColor,
                                    border: Border.all(
                                        color: Colors.white, width: 2.0),
                                  ),
                                  child: const Icon(
                                    FeatherIcons.dollarSign,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                isBalanceShow ? '\$1000' : 'Balance',
                                style: kTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                              const SizedBox(width: 5.0),
                              AnimatedOpacity(
                                opacity: isBalanceShow ? 1.0 : 0.0,
                                duration:
                                    const Duration(milliseconds: 1000),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(30.0),
                                    color: kMainColor,
                                    border: Border.all(
                                        color: Colors.white, width: 2.0),
                                  ),
                                  child: const Icon(
                                    FeatherIcons.dollarSign,
                                    color: Colors.white,
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
                ),
                const SizedBox(height: 50.0),
                Container(
                  padding: const EdgeInsets.all(10.0),
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
                        'Spin the Wheel',
                        style: kTextStyle.copyWith(
                            color: kTitleColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Press the SPIN button',
                        style: kTextStyle.copyWith(color: kGreyTextColor),
                      ),
                      Container(
                        height: 355,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/reward.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ButtonGlobal(
                        buttontext: 'Watch Video (Earn 50 Coins)',
                        buttonDecoration: kButtonDecoration,
                        onPressed: () {
                          setState(() {
                            showRewardPopUp();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
