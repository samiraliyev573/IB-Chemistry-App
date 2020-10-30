import 'package:flutter/material.dart';
import 'package:IB_Chemsitry_App/configuration.dart';
import 'package:IB_Chemsitry_App/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Useful Resources'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    color: Colors.white60,
                    margin: EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Hero(
                          tag: 1, child: Image.asset('images/playstore.png')),
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Column(
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: <Widget>[
                      SymptomCard(
                        link: 'https://www.reddit.com/r/IBO/',
                        title: 'IB Reddit',
                        icons: FontAwesomeIcons.reddit,
                      ),
                      SymptomCard(
                        link:
                            'https://www.youtube.com/user/richthornley/featured',
                        title: 'Richard Thornley',
                        icons: FontAwesomeIcons.youtube,
                      ),
                      SymptomCard(
                        link: 'https://mrwengibchemistry.com',
                        title: 'Mr Weng',
                        icons: FontAwesomeIcons.wordpress,
                      ),
                      SymptomCard(
                        link: 'https://www.msjchem.com',
                        title: 'MSJ Chem',
                        icons: FontAwesomeIcons.wordpress,
                      ),
                      SymptomCard(
                        link:
                            'https://www.youtube.com/user/RadioChemistryVCE/featured',
                        title: 'RadioChemistry',
                        icons: FontAwesomeIcons.youtube,
                      ),
                      SymptomCard(
                        icons: FontAwesomeIcons.wordpress,
                        link: 'https://www.khanacademy.org/science/chemistry',
                        title: 'Khan Academy',
                      ),
                      Text('More coming soon')
                    ],
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 120,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 60,
                        decoration: BoxDecoration(
                            color: primaryGreen,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Go Back',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    Key key,
    this.icon,
    this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 4.0,
      ).copyWith(
        bottom: kSpacingUnit * 2.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit * 2.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit * 3.0),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: kSpacingUnit * 2.5,
          ),
          SizedBox(width: kSpacingUnit * 1.5),
          Text(
            this.text,
            style: kTitleTextStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          if (this.hasNavigation)
            Icon(
              FontAwesomeIcons.arrowRight,
              size: kSpacingUnit * 2.5,
            ),
        ],
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final IconData icons;
  final String title;
  final bool isActive;
  final String link;
  const SymptomCard({
    Key key,
    this.icons,
    this.title,
    this.link,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(link);
      },
      child: Container(
        width: 120,
        height: 120,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            isActive
                ? BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 20,
                    color: kActiveShadowColor,
                  )
                : BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    color: kShadowColor,
                  ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              icons,
              size: 40,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
