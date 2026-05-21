import 'package:cash_rocket/Screen/Home%20Screen/Features%20Screen/Quiz/mt_loser.dart';
import 'package:cash_rocket/Screen/Home%20Screen/Features%20Screen/Quiz/mt_victory.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Constant Data/button_global.dart';
import '../../../Constant Data/constant.dart';

class MtFootball extends StatefulWidget {
  const MtFootball({Key? key}) : super(key: key);

  @override
  State<MtFootball> createState() => _MtFootballState();
}

class _MtFootballState extends State<MtFootball> {
  void showPopUp() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SizedBox(
            height: 320,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '50/50',
                    style: kTextStyle.copyWith(
                        color: kTitleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Amet minim mollit non deserunt ullamc est sit aliqua',
                    style: kTextStyle.copyWith(color: kGreyTextColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4.0),
                  Container(
                    height: 150,
                    width: 140,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/50.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: kMainColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Yes',
                                style: kTextStyle.copyWith(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ).onTap(() => finish(context)),
                        ),
                        const SizedBox(width: 5.0),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: kGreyTextColor.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'No',
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ).onTap(() => finish(context)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  bool isSelected = true;
  String select = '';

  List<String> option = [
    'Yes',
    'No',
    'None',
    'Don\'t know'
  ];

  List<Color> colorList = [
    const Color(0xFFFF0000),
    const Color(0xFF4AAF4F),
    const Color(0xFFECECEC),
  ];
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          titleSpacing: 0.0,
          title: ListTile(
            horizontalTitleGap: 0.0,
            title: Text(
              'Football',
              style: kTextStyle.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '40 Questions (100 Points)',
              style: kTextStyle.copyWith(color: Colors.white),
            ),
            trailing: CircularCountDownTimer(
              duration: 20,
              initialDuration: 0,
              controller: _controller,
              height: 50.0,
              width: 50.0,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.white,
              fillGradient: null,
              backgroundColor: Colors.transparent,
              backgroundGradient: null,
              strokeWidth: 3.0,
              strokeCap: StrokeCap.round,
              textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: false,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
            ),
          ),
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
              width: context.width() / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 165,
                    width: 285,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image: AssetImage('images/goalkeeper.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Center(
                    child: Text(
                      'Can a goalkeeper score a goal \nfor his own team?',
                      style: kTextStyle.copyWith(color: kTitleColor),
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ListView.builder(
                      itemCount: option.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, i) {
                        return Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                                color: select == option[i]
                                    ? Colors.green
                                    : kGreyTextColor.withOpacity(0.5)),
                          ),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                select = option[i];
                              });
                            },
                            title: Text(
                              option[i],
                              textAlign: TextAlign.center,
                              style: kTextStyle.copyWith(
                                color: kTitleColor,
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    FeatherIcons.check,
                                    color: Colors.green,
                                  ).visible(select == option[i]),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  const SizedBox(height: 10.0),
                  ButtonGlobal(
                      buttontext: 'Next',
                      buttonDecoration: kButtonDecoration,
                      onPressed: () {
                        setState(() {
                          const Victory().launch(context);
                        });
                      }),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: const Color(0xFFA86CD7),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '50/50',
                                style: kTextStyle.copyWith(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ).onTap(
                            () => showPopUp(),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: kGreyTextColor
                                        .withOpacity(0.5)),
                                borderRadius:
                                    BorderRadius.circular(30.0),
                                color: Colors.transparent),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Skip',
                                style: kTextStyle.copyWith(
                                    color: kGreyTextColor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ).onTap(
                            () => const MtLoser().launch(context),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
