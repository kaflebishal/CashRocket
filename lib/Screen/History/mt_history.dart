import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/constant.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<String> logoList = [
    'images/logo1.png',
    'images/logo2.png',
    'images/logo3.png',
    'images/logo4.png',
    'images/logo5.png',
    'images/logo6.png',
    'images/logo7.png',
  ];

  List<String> titleList = [
    'AdColony Video',
    'Withdraw',
    'Fyber Offer',
    'Chartboost Video',
    'Vungle Video',
    'Kiwi Wall Offer',
    'AdMob Video',
  ];
  List<String> subtitleList = [
    '26 Jun 2022',
    '26 Jun 2022',
    '25 Jun 2022',
    '24 Jun 2022',
    '24 Jun 2022',
    '16 Jun 2022',
    '15 Jun 2022',
  ];
  List<String> pointList = [
    '+5',
    '\$3',
    '+10',
    '+5',
    '+5',
    '+10',
    '+5',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
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
            'History',
            style: kTextStyle.copyWith(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40.0),
              Container(
                width: context.width(),
                decoration: BoxDecoration(
                  color: kMainColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: TabBar(
                  labelStyle: kTextStyle.copyWith(color: kMainColor),
                  unselectedLabelColor: kGreyTextColor,
                  indicatorColor: kMainColor,
                  labelColor: kMainColor,
                  tabs: const [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Offer',
                    ),
                    Tab(
                      text: 'Videos',
                    ),
                    Tab(
                      text: 'Withdraw',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.height(),
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: logoList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, i) {
                          return Card(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                side: BorderSide(
                                  color: kGreyTextColor.withOpacity(0.1),
                                )),
                            child: (ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  logoList[i],
                                ),
                              ),
                              title: Text(
                                titleList[i],
                                style: kTextStyle.copyWith(color: kTitleColor),
                              ),
                              subtitle: Text(
                                subtitleList[i],
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      pointList[i],
                                      style: kTextStyle.copyWith(
                                          color: kMainColor),
                                    ),
                                    Text(
                                      '3000 Points',
                                      style: kTextStyle.copyWith(
                                          color: kGreyTextColor),
                                      textAlign: TextAlign.end,
                                    ).visible(i == 1),
                                  ],
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: logoList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, i) {
                          return Card(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                side: BorderSide(
                                  color: kGreyTextColor.withOpacity(0.1),
                                )),
                            child: (ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  logoList[i],
                                ),
                              ),
                              title: Text(
                                titleList[i],
                                style: kTextStyle.copyWith(color: kTitleColor),
                              ),
                              subtitle: Text(
                                subtitleList[i],
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      pointList[i],
                                      style: kTextStyle.copyWith(
                                          color: kMainColor),
                                    ),
                                    Text(
                                      '3000 Points',
                                      style: kTextStyle.copyWith(
                                          color: kGreyTextColor),
                                      textAlign: TextAlign.end,
                                    ).visible(i == 1),
                                  ],
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: logoList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, i) {
                          return Card(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                side: BorderSide(
                                  color: kGreyTextColor.withOpacity(0.1),
                                )),
                            child: (ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  logoList[i],
                                ),
                              ),
                              title: Text(
                                titleList[i],
                                style: kTextStyle.copyWith(color: kTitleColor),
                              ),
                              subtitle: Text(
                                subtitleList[i],
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      pointList[i],
                                      style: kTextStyle.copyWith(
                                          color: kMainColor),
                                    ),
                                    Text(
                                      '3000 Points',
                                      style: kTextStyle.copyWith(
                                          color: kGreyTextColor),
                                      textAlign: TextAlign.end,
                                    ).visible(i == 1),
                                  ],
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: logoList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, i) {
                          return Card(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                side: BorderSide(
                                  color: kGreyTextColor.withOpacity(0.1),
                                )),
                            child: (ListTile(
                              leading: CircleAvatar(
                                radius: 20.0,
                                backgroundImage: AssetImage(
                                  logoList[i],
                                ),
                              ),
                              title: Text(
                                titleList[i],
                                style: kTextStyle.copyWith(color: kTitleColor),
                              ),
                              subtitle: Text(
                                subtitleList[i],
                                style:
                                    kTextStyle.copyWith(color: kGreyTextColor),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      pointList[i],
                                      style: kTextStyle.copyWith(
                                          color: kMainColor),
                                    ),
                                    Text(
                                      '3000 Points',
                                      style: kTextStyle.copyWith(
                                          color: kGreyTextColor),
                                      textAlign: TextAlign.end,
                                    ).visible(i == 1),
                                  ],
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
