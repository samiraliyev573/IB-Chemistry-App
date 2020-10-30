import 'package:IB_Chemsitry_App/drawerPages/syllabusclass.dart';

import '../constants.dart';

import '../widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Syllabus'),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: size.height * .4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(""),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: size.height * .05),
                    BookInfo(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .3),
              child: Expanded(
                child: ListView.builder(
                    itemCount: names.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 10.0),
                        child: ChapterCard(
                          name: names[index],
                          chapterNumber: index + 1,
                          tag: tags[index],
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SyllabusScreen(
                                    appbarTitle: appbartitles[index],
                                    documentName: documentNames[index],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;
  const ChapterCard({
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNumber : $name \n",
                  style: TextStyle(
                    fontSize: 13,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "IB Chemistry ",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Syllabus",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Short and brief summary notes of all chapters under your hand. Clear and Consize",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 12,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "Enjoy",
                          verticalPadding: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          shape: CircleBorder(),
          elevation: 15,
          child: Image.asset(
            "images/book3d.png",
            height: 180,
            width: 180,
          ),
        ),
      ],
    );
  }
}
