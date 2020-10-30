import 'package:IB_Chemsitry_App/drawerPages/testyourselfscreen.dart';
import 'package:flutter/material.dart';
import 'package:IB_Chemsitry_App/constants.dart';

class TestYourself extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return new Scaffold(
        appBar: AppBar(
          title: Text('Test Yourself'),
        ),
        backgroundColor: Color(0xFFf2f3f8),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: height * .7,
                width: width,
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 35.0, bottom: 60.0),
                      child: SizedBox(
                        width: 200.0,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 45.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: (index % 2 == 0)
                                        ? Colors.white
                                        : Color(0xFF2a2d3f),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(0.0, 10.0),
                                          blurRadius: 10.0)
                                    ],
                                    borderRadius: BorderRadius.circular(12.0)),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Card(
                                  shape: CircleBorder(),
                                  elevation: 15,
                                  child: Image.asset(
                                    images[index],
                                    width: 172.5,
                                    height: 199.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(title[index],
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontFamily: "Montserrat-Bold",
                                              color: (index % 2 == 0)
                                                  ? Color(0xFF2a2d3f)
                                                  : Colors.white)),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(undertitle[index],
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              fontFamily: "Montserrat-Medium",
                                              color: (index % 2 == 0)
                                                  ? Color(0xFF2a2d3f)
                                                  : Colors.white)),
                                      SizedBox(
                                        height: 100.0,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: RaisedButton(
                                            elevation: 10,
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return TestYourselfScreen(
                                                  chapterNumber: (index + 1),
                                                );
                                              }));
                                            },
                                            color: Colors.amber,
                                            child: Text('Start'),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ));
  }


}
