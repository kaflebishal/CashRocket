import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cash_rocket/Screen/Profile/mt_edit_profile.dart';
import 'package:cash_rocket/Screen/Profile/mt_offer_status.dart';
import 'package:cash_rocket/Screen/Profile/mt_privacy_policy.dart';
import 'package:cash_rocket/Screen/Profile/mt_terms_condition.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Constant Data/constant.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> count = [
    '5000',
    '7+',
    '15+',
  ];

  List<String> title = [
    'Blance',
    'Refer',
    'Invited',
  ];
  List<String> titleList = [
    'Edit Profile',
    'Offer Status',
    'Tems of Service',
    'Privacy Policy',
    'Log Out',
  ];

  final iconList = <IconData>[
    Icons.person,
    FontAwesomeIcons.fileLines,
    BootstrapIcons.shield_check,
    FeatherIcons.info,
    Icons.logout,
  ];

  List<Widget> screenList = [
    const EditProfile(),
    const OfferStatus(),
    const MtTermsAndCondition(),
    const MtPrivacyPolicy(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              width: context.width(),
              decoration: const BoxDecoration(
                color: kMainColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40.0),
                  Column(
                    children: [
                      const Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 40,
                          backgroundImage: AssetImage('images/profileimg.png'),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Ibne Riead',
                        style: kTextStyle.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'riead12563@gmail.com',
                        style: kTextStyle.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 5.0),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: context.width(),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color(0xFFFFABA5),
                    Color(0xFFFF7C92),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  HorizontalList(
                    spacing: 50,
                    itemCount: 3,
                    itemBuilder: (_, i) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.3),
                                border: Border.all(color: Colors.white)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    count[i],
                                    style: kTextStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            title[i],
                            style: kTextStyle.copyWith(color: Colors.white),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
            ListView.builder(
                itemCount: iconList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: kGreyTextColor.withOpacity(0.1),
                              width: 1.0)),
                      child: (ListTile(
                        onTap: (() => screenList[i].launch(context)),
                        horizontalTitleGap: 2,
                        leading: Icon(
                          iconList[i],
                          color: kMainColor,
                        ),
                        title: Text(titleList[i]),
                        trailing: const Icon(FeatherIcons.chevronRight),
                      )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
