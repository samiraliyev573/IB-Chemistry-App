import 'package:IB_Chemsitry_App/homePageScreens/data_booklet.dart';
import 'package:IB_Chemsitry_App/homePageScreens/resources_page.dart';

import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

import 'widgets/reading_list_card.dart';
import 'widgets/two_side_round_button.dart';
import 'package:flutter/material.dart';
import 'homePageScreens/internal_assesment.dart';

class HomePageDetails extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: size.height * .01),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline6,
                      children: [
                        TextSpan(text: "What would you like to \nread "),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: <Widget>[
                      ReadingListCard(
                        image: "images/book4d.png",
                        title: "Chemistry Data Booklet",
                        auth: "Most recent data booklet",
                        rating: 5,
                        pressRead: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DataBooklet();
                          }));
                        },
                      ),
                      ReadingListCard(
                        image: "images/book7d.png",
                        title: "Most recent guide",
                        auth: "First assessment 2016",
                        rating: 4.9,
                        pressRead: () {
                          customLaunch(
                              'https://www.ibchem.com/root_pdf/Chemistry_guide_2016.pdf');
                        },
                      ),
                      ReadingListCard(
                        image: "images/book9d.png",
                        title: "Important recourses",
                        auth: "You should check it out",
                        rating: 4.8,
                        pressRead: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ResourcesPage();
                          }));
                        },
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline5,
                          children: [
                            TextSpan(text: "Check out my  "),
                            TextSpan(
                              text: "Internal Assessment",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      bestOfTheDayCard(size, context),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline6,
                          children: [
                            TextSpan(text: "Try out hamburger icon on top "),
                            TextSpan(
                              text: "to see all app recourses",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: 9,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "Investigating the effects of concentration, time and temperature on the absorbtivity of the iron using photometry",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 18),
                  ),
                  Text(
                    "Samir Aliyev",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Text(
                    "20/24",
                    style: TextStyle(color: kBlackColor),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "images/pdficon.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InternalAssesment();
                  }));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
