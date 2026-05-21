import 'package:cash_rocket/Screen/Constant%20Data/constant.dart';
import 'package:cash_rocket/Screen/Home%20Screen/Features%20Screen/mt_quiz.dart';
import 'package:cash_rocket/Screen/Home%20Screen/Features%20Screen/mt_videos.dart';
import 'package:cash_rocket/Screen/Home%20Screen/home.dart';
import 'package:cash_rocket/Screen/Profile/mt_profile.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_plus/share_plus.dart';

import 'Features Screen/mt_offers.dart';
import 'Features Screen/mt_refer.dart';
import 'Features Screen/mt_wheel.dart';
import 'Features Screen/redeem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: const DecorationImage(
                            image: AssetImage('images/banner3.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10.0),
                            Text(
                              'Daily Reward!',
                              style: kTextStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Already rewarded\ncome back later',
                              style: kTextStyle.copyWith(
                                  color: Colors.white, fontSize: 18.0),
                              maxLines: 2,
                            ),
                            const SizedBox(height: 10.0),
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
                                    left: 15.0, right: 15.0),
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
          );
        });
  }

  void showPopUp() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  height: 330.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 45.0,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      '+10',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                                Text(
                                  'Monday',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ).onTap(() => showRewardPopUp()),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 45.0,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      '+10',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                                Text(
                                  'Tuesday',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ).onTap(() => showRewardPopUp()),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 45.0,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      '+10',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                                Text(
                                  'Wednes',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ).onTap(() => showRewardPopUp()),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 45.0,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      '+10',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                                Text(
                                  'Thursday',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ).onTap(() => showRewardPopUp()),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 45.0,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      '+10',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                                Text(
                                  'Friday',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ).onTap(() => showRewardPopUp()),
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.solidStar,
                                      size: 45.0,
                                      color: kMainColor,
                                    ),
                                    Text(
                                      '+10',
                                      style: kTextStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    )
                                  ],
                                ),
                                Text(
                                  'Saturday',
                                  style: kTextStyle.copyWith(
                                      color: kGreyTextColor),
                                ),
                              ],
                            ).onTap(() => showRewardPopUp()),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Center(
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.solidStar,
                                    size: 45.0,
                                    color: kMainColor,
                                  ),
                                  Text(
                                    '+10',
                                    style: kTextStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  )
                                ],
                              ),
                              Text(
                                'Sunday',
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                            ],
                          ),
                        ).onTap(() => showRewardPopUp()),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 87),
                child: Image(
                  image: AssetImage('images/star.png'),
                ),
              ),
            ],
          );
        });
  }

  List<String> bannerList = [
    'images/banner1.png',
    'images/banner2.png',
  ];
  List<String> featureList = [
    'images/offer.png',
    'images/videos.png',
    'images/wheel.png',
    'images/refer.png',
  ];
  List<String> featureList2 = [
    'images/redeem.png',
    'images/quiz.png',
    'images/tutorial.png',
    'images/share.png',
  ];
  bool isBalanceShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: kMainColor,
        elevation: 0.0,
        title: ListTile(
          leading: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.white)),
            child: const CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('images/profile.png'),
            ),
          ).onTap(
            () => const Profile().launch(context),
          ),
          title: Text(
            'Shaidul Islam',
            style: kTextStyle.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: context.width(),
                height: context.height() / 4,
                decoration: const BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(left: 4.0),
                          leading: const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 25,
                            backgroundImage: AssetImage('images/meter.png'),
                          ),
                          title: Center(
                            child: Text(
                              'Collect Daily Reward Now!',
                              style: kTextStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Text(
                                '20+',
                                style: kTextStyle.copyWith(
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ).onTap(
                        () => showPopUp(),
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        'Tending Offers',
                        style: kTextStyle.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 50.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'All Features',
                      style: kTextStyle.copyWith(
                          color: kTitleColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/offer.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Offers',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ).onTap(
                          () => const Offers().launch(context),
                        ),
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/videos.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Videos',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ).onTap(
                          () => const Videos().launch(context),
                        ),
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/wheel.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Wheel',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ).onTap(
                          () => const Wheel().launch(context),
                        ),
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/refer.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Refer',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ).onTap(
                          () => const Refer().launch(context),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/reedem.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Redeem',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ).onTap(
                          () => const Redeem().launch(context),
                        ),
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/quiz.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Quiz',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ).onTap(
                          () => const MtQuiz().launch(context),
                        ),
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/tutorial.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                                child: Text(
                              'Tutorial',
                              style: kTextStyle.copyWith(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.bold),
                            )),
                          ],
                        ),
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('images/share.png'),
                            ),
                            const SizedBox(height: 4.0),
                            Center(
                              child: Text(
                                'Share',
                                style: kTextStyle.copyWith(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ).onTap(() => Share.share(
                                'check out my website https://example.com',
                                subject: 'Look what I made!'))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: context.height() / 4, left: 10, right: 10),
            child: HorizontalList(
              padding: EdgeInsets.zero,
              itemCount: bannerList.length,
              itemBuilder: (_, i) {
                return Container(
                  height: 150,
                  width: 305,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        bannerList[i],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
