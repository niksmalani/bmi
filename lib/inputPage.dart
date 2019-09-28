import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CardIcon.dart';
import 'MyCard.dart';

const KMyCardInActiveColor = Color(0xff111328);
const KMyCardActiveColor = Color(0xff1D1F32);
const KBottomCardColor = Color(0xffEB1555);
const KBottomCardHeight = 80.0;
const KLabelTextStyle = TextStyle(
  fontSize: 18,
);
const KNumberLabelStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

enum GenderType {
  male,
  female,
}

int height =150;
int weight =60;
int age =30;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType genger;

//  var myFemaleCardColor = myCardInActiveColor;
//  var myMaleCardColor = myCardInActiveColor;
//
//  void updateCardColor(GenderType gender) {
//    if (gender == GenderType.male) {
//      if (myMaleCardColor == myCardInActiveColor) {
//        myMaleCardColor = myCardActiveColor;
//        myFemaleCardColor = myCardInActiveColor;
//      } else {
//        myMaleCardColor = myCardInActiveColor;
//      }
//    } else if (gender == GenderType.female) {
//      if (myFemaleCardColor == myCardInActiveColor) {
//        myFemaleCardColor = myCardActiveColor;
//        myMaleCardColor = myCardInActiveColor;
//      } else {
//        myFemaleCardColor = myCardInActiveColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    press: () {
                      setState(() {
                        genger = GenderType.male;
                      });
                    },
                    cardChild: CardIcons(
                      iconData: FontAwesomeIcons.mars,
                      iconLable: "Male",
                    ),
                    color: genger == GenderType.male
                        ? KMyCardActiveColor
                        : KMyCardInActiveColor,
                  ),
                ),
                Expanded(
                  child: MyCard(
                    press: () {
                      setState(() {
                        genger = GenderType.female;
                      });
                    },
                    cardChild: CardIcons(
                      iconData: FontAwesomeIcons.venus,
                      iconLable: "Female",
                    ),
                    color: genger == GenderType.female
                        ? KMyCardActiveColor
                        : KMyCardInActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: MyCard(
                  color: KMyCardActiveColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style: KLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            "$height",
                            style: KNumberLabelStyle,
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[500]),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: Colors.pink,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayColor: Colors.pink.withAlpha(28),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                          min: 100,
                          max: 200,
                          value: height.toDouble(),
                          label: "$height",
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                      //Slider(),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    color: KMyCardActiveColor,
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: KLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              "$weight",
                              style: KNumberLabelStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    weight != 1 ? weight-- : weight = 1;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight < 300 ? weight++ : weight = 300;
                                  });
                                }),
                          ],
                        ),
                        //Slider(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: KMyCardActiveColor,
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: KLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              "$age",
                              style: KNumberLabelStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    age != 1 ? age-- : age = 1;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    age < 120 ? age++ : age = 120;
                                  });
                                }),
                          ],
                        ),
                        //Slider(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(fontSize: 20),
              ),
            ),
            color: KBottomCardColor,
            margin: EdgeInsets.only(top: 10.0),
            height: KBottomCardHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton({@required this.icon, @required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xff111328),
    );
  }
}
