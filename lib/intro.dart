import 'package:flutter/material.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  _intro createState() => _intro();
}

class _intro extends State<intro> {
  @override
  void initState() {super.initState();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Stack(
          children: [
            Align(
              alignment: FractionalOffset.center,
              child: Image.asset(
                'lib/i1.png',
                color: const Color.fromRGBO(95, 255, 189, 100),
                width: MediaQuery.of(context).size.width*0.9,
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Image.asset(
                'lib/i2.png',
                color: Colors.white,
                width: MediaQuery.of(context).size.width*0.25,
              ),
            ),
          ],
        ),

    );
  }
}