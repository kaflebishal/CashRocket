import 'package:cash_rocket/Screen/Constant%20Data/constant.dart';
import 'package:cash_rocket/Screen/Home%20Screen/Features%20Screen/mt_earn_points.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<String> imageList = [
    'images/bg1.png',
    'images/bg2.png',
    'images/bg3.png',
    'images/bg4.png',
    'images/bg2.png',
    'images/bg1.png',
    'images/bg4.png',
    'images/bg3.png',
  ];

  List<String> logoList = [
    'images/chart.png',
    'images/adcolony.png',
    'images/vungle.png',
    'images/iron.png',
    'images/app.png',
    'images/sa.png',
    'images/am.png',
    'images/an.png',
  ];

  List<String> titleList = [
    'Chartboost',
    'AdColony',
    'Vungle',
    'IronSource',
    'AppLovin',
    'StartApp',
    'AdMob',
    'Audience Network',
  ];
  List<String> subtitleList = [
    'Watch views and get Points',
    'Watch views and get Points',
    'Watch views and get Points',
    'Watch views and get Points',
    'Watch views and get Points',
    'Watch views and get Points',
    'Watch views and get Points',
    'Watch views and get Points',
  ];

  bool isBalanceShow = false;

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
          'Videos',
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
                ),
              ),
              width: 105,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.2,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
              8,
              (i) {
                return Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      height: 150,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(
                            imageList[i],
                          ),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            titleList[i],
                            style: kTextStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            subtitleList[i],
                            style: kTextStyle.copyWith(color: Colors.white,fontSize: 12.0),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ).onTap(
            () => const EarnPoints().launch(context),
          ),
        ),
      ),
    );
  }
}
