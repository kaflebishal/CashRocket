import 'package:cash_rocket/Screen/Home%20Screen/Features%20Screen/Quiz/mt_football.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/constant.dart';

class MtQuiz extends StatefulWidget {
  const MtQuiz({Key? key}) : super(key: key);

  @override
  State<MtQuiz> createState() => _MtQuizState();
}

class _MtQuizState extends State<MtQuiz> {
  List<String> tileTitle = [
    'Sports',
    'Courses',
    'Music',
    'Science & Natural',
  ];
  List<String> tileImageList = [
    'images/s.png',
    'images/c.png',
    'images/m.png',
    'images/s2.png',
  ];

  List<String> imageList = [
    'images/football.png',
    'images/cricket.png',
    'images/basketball.png',
    'images/kabadi.png',
    'images/boxin.png',
    'images/hockey.png',
    'images/tennis.png',
  ];
  List<String> titleList = [
    'Football',
    'Cricket',
    'Basketball',
    'Kabaddi',
    'Boxing',
    'Hockey',
    'Tennis',
  ];
  List<String> subTitleList = [
    '40 Questions (100 Points)',
    '30 Questions (80 Points)',
    '40 Questions (100 Points)',
    '40 Questions (100 Points)',
    '40 Questions (100 Points)',
    '40 Questions (100 Points)',
    '40 Questions (100 Points)',
  ];

  List<Color> colorList = [
    const Color(0xFFFF7288),
    const Color(0xFF8555EA),
    const Color(0xFF2F81E8),
    const Color(0xFFFF8244),
  ];

  List<Widget> quizScreenList=[
    const MtFootball(),
  ];
  bool isBalanceShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Quiz',
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
              width: 101,
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
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              ListView.builder(
                  itemCount: tileImageList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: ExpansionTile(
                        initiallyExpanded: i == 0 ? true : false,
                        iconColor: Colors.white,
                        collapsedBackgroundColor: colorList[i],
                        backgroundColor: colorList[i],
                        title: Text(
                          tileTitle[i],
                          style: kTextStyle.copyWith(color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            tileImageList[i],
                          ),
                        ),
                        children: [
                          ListView.builder(
                              itemCount: imageList.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (_, i) {
                                return Container(
                                  color: Colors.white,
                                  child: ListTile(
                                    onTap: (){
                                      setState(() {
                                        const MtFootball().launch(context);
                                      });
                                    },
                                    contentPadding: EdgeInsets.zero,
                                    leading: CircleAvatar(
                                      backgroundColor:
                                          kMainColor.withOpacity(0.1),
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        imageList[i],
                                      ),
                                    ),
                                    title: Text(
                                      titleList[i],
                                      style: kTextStyle.copyWith(
                                          color: kTitleColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      subTitleList[i],
                                      style: kTextStyle.copyWith(
                                          color: kGreyTextColor),
                                    ),
                                    trailing: const Icon(
                                        FeatherIcons.chevronRight,
                                        color: kGreyTextColor),
                                  ),
                                );
                              })
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
