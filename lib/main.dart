import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'intro.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //e
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 1500,
            splash: const intro(),
            splashIconSize: double.infinity,
            nextScreen: const MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.transparent));
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const color1 = Color.fromRGBO(95, 255, 189, 100);
  static const color2 = Color.fromRGBO(16, 80, 102, 100);
  static const iconshadow = <Shadow>[
    Shadow(
      offset: Offset(0, 0),
      blurRadius: 1.5,
      color: Colors.black,
    ),
  ];
  static const iconshadow2 = <Shadow>[
    Shadow(
      offset: Offset(0, 0),
      blurRadius: 1.5,
      color: color2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button tapped'),
            duration: Duration(milliseconds: 500),
          ),
        );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: color1,
        elevation: 10,
        shadowColor: Colors.black,
        title: const Text(
          'Sharm Taxi UI Demo ',
          textScaleFactor: 1.5,
          style: TextStyle(
            decorationThickness: double.infinity,
            color: color2,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(0, 0),
                blurRadius: 5.0,
                color: color2,
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: <Widget>[
        Divider(),
        _headline('(0) Trip Parameters Style (EN)'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Passengers:',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'Poppins',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: color2,
                      ),
                    ],
                  ),
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Luggages:',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'Poppins',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: color2,
                      ),
                    ],
                  ),
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Driver Rating:',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'Poppins',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: color2,
                      ),
                    ],
                  ),
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar(
                  filledColor: color2,
                  filledIcon: Icons.person,
                  emptyColor: color2,
                  emptyIcon: Icons.person_outline,
                  alignment: Alignment.centerRight,
                  onRatingChanged: (value) =>
                      debugPrint('You chose $value star'),
                  initialRating: 1,
                  maxRating: 3,
                ),
                RatingBar(
                  filledColor: color2,
                  filledIcon: Icons.shopping_bag,
                  emptyColor: color2,
                  emptyIcon: Icons.shopping_bag_outlined,
                  alignment: Alignment.centerRight,
                  onRatingChanged: (value) =>
                      debugPrint('You chose $value star'),
                  initialRating: 0,
                  maxRating: 3,
                ),
                RatingBar(
                  filledColor: color2,
                  filledIcon: Icons.star,
                  emptyColor: color2,
                  emptyIcon: Icons.star_border,
                  alignment: Alignment.centerRight,
                  onRatingChanged: (value) =>
                      debugPrint('You choosed $value star'),
                  initialRating: 3,
                  maxRating: 5,
                ),
              ],
            ),
          ],
        ),
        Divider(),
        _headline('(0) Trip Parameters Style (AR)'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RatingBar(
                  filledColor: color2,
                  filledIcon: Icons.person,
                  emptyColor: color2,
                  emptyIcon: Icons.person_outline,
                  alignment: Alignment.centerRight,
                  onRatingChanged: (value) =>
                      debugPrint('You chose $value star'),
                  initialRating: 1,
                  maxRating: 3,
                ),
                RatingBar(
                  filledColor: color2,
                  emptyColor: color2,
                  filledIcon: Icons.shopping_bag,
                  emptyIcon: Icons.shopping_bag_outlined,
                  alignment: Alignment.centerRight,
                  onRatingChanged: (value) =>
                      debugPrint('You chose $value star'),
                  initialRating: 0,
                  maxRating: 3,
                ),
                RatingBar(
                  filledColor: color2,
                  emptyColor: color2,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  alignment: Alignment.centerRight,
                  onRatingChanged: (value) =>
                      debugPrint('You choosed $value star'),
                  initialRating: 3,
                  maxRating: 5,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'عدد الركاب:',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'AR1',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: color2,
                      ),
                    ],
                  ),
                  textDirection: TextDirection.rtl,
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.left,
                ),
                Text(
                  'عدد الحقائب:',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'AR1',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: color2,
                      ),
                    ],
                  ),
                  textDirection: TextDirection.rtl,
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'اقل تقييم للسائق:',
                  style: TextStyle(
                    color: color2,
                    fontFamily: 'AR1',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: color2,
                      ),
                    ],
                  ),
                  textDirection: TextDirection.rtl,
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ],
        ),
        Divider(),
        _headline('(1) Estimation (EN)'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                new Image.asset(
                  'lib/taxi mock1.png',
                  height: 70.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.local_taxi, color: color2, shadows: iconshadow2),
                    Text(
                      'Sharm Taxi',
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.timelapse, color: color2, shadows: iconshadow2),
                    Text(
                      '13 Minutes',
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.gas_meter, color: color2, shadows: iconshadow2),
                    Text(
                      '13.5 KM',
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.attach_money,
                        color: color2, shadows: iconshadow2),
                    Text(
                      '160 EGP',
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Divider(),
        _headline('(1) Estimation (AR)'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تاكسى شرم',
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.local_taxi, color: color2, shadows: iconshadow2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '13 دقيقة',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.timelapse, color: color2, shadows: iconshadow2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '13.5 كم',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.gas_meter, color: color2, shadows: iconshadow2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '160 جنيه مصرى',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'AR1',
                        color: color2,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0, 0),
                            blurRadius: 2.0,
                            color: color2,
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.attach_money,
                        color: color2, shadows: iconshadow2),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Transform(
                  transform: Matrix4.rotationY(22 / 7),
                  alignment: Alignment.center,
                  child: new Image.asset(
                    'lib/taxi mock1.png',
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(),
        _headline('(2) English Font'),
        // poppins ttf
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Poppins font example',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: color2,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 5.0,
                      color: color2,
                    ),
                  ],
                ),
                textScaleFactor: 2.3)),
        Divider(),
        _headline('(3) Arabic Font'),
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'مثال للخط العربى',
              style: TextStyle(
                fontFamily: 'AR1',
                color: color2,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: color2,
                  ),
                ],
              ),
              textScaleFactor: 2.3,
              textAlign: TextAlign.right,
            )),
        Divider(),
        _headline('(4) Buttons style, color, shadow'),
        Divider(),
        Divider(),
        Center(
          child: Ink(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 3,
                  spreadRadius: 0.5,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(4),
            ),
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                    primary: color1, alignment: Alignment.center),
                onPressed: _showSnack,
                child: Text(
                  'English Botton Example',
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color2,
                    fontFamily: 'Poppins',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 5.0,
                        color: color2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(),
        Divider(),
        Divider(),
        Center(
          child: Ink(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 3,
                  spreadRadius: 0.5,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(4),
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.15,
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextButton(
                style: ElevatedButton.styleFrom(primary: color1),
                onPressed: _showSnack,
                child: Text(
                  'مثال الزرار العربى',
                  textDirection: TextDirection.rtl,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color2,
                    fontFamily: 'AR1',
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 5.0,
                        color: color2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(),
        Divider(),
        _headline('(5) Icons'),
        _subheadline('(A) Pickup:'),
        Icon(Icons.my_location_rounded, shadows: iconshadow),
        _subheadline('(B) Destination:'),
        Icon(Icons.my_location_rounded, shadows: iconshadow),
        _subheadline('(C) Booking (Side Menu):'),
        Icon(Icons.local_taxi, shadows: iconshadow),
        _subheadline('(D) My Trips (Side Menu):'),
        Icon(Icons.inventory_2_outlined, shadows: iconshadow),
        _subheadline('(E) Profile (Side Menu):'),
        Icon(Icons.account_circle_outlined, shadows: iconshadow),
        _subheadline('(F) Logout (Side Menu):'),
        Icon(Icons.logout, shadows: iconshadow),
        Divider(),
        _headline('(6) In driver/Vehicle details (After the driver accepted)'),
        _subheadline('(A) Show the vehicle plate number instead of the side number'),
        _subheadline('Example:'),
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'ط ج ب 1234',
              style: TextStyle(
                color: color2,
                fontFamily: 'Poppins',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: color2,
                  ),
                ],
              ),
              textScaleFactor: 1.5,
              textAlign: TextAlign.left,
            )),
        FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'ط ج ب 1234',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: color2,
                fontFamily: 'AR1',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: color2,
                  ),
                ],
              ),
              textScaleFactor: 1.5,
              textAlign: TextAlign.right,
            )),
        Divider(),
        Divider(),
      ]),
    );
  }

  _headline(String a) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              a,
              style: TextStyle(
                color: color2,
                fontFamily: 'Poppins',
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: color2,
                  ),
                ],
              ),
              textScaleFactor: 1.7,
              textAlign: TextAlign.left,
            )));
  }

  _subheadline(String a) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              a,
              style: TextStyle(
                color: color2,
                fontFamily: 'Poppins',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                    color: color2,
                  ),
                ],
              ),
              textScaleFactor: 1.2,
              textAlign: TextAlign.left,
            )));
  }
}
