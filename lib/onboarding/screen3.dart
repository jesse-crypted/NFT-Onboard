import 'package:flutter/material.dart';

import '../home.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragUpdate: (details) {
          if (details.delta.direction <= 0) {
            Navigator.pop(context);
          } else if (details.delta.direction > 0) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home()));
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 236, 229, 1),
                      image: DecorationImage(
                          image: AssetImage('assets/images/NFTjoy4.png')),
                    )),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Welcome to the Future of Digital Ownership",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Explore a world of unique digital art, where every creation is one of a kind. Collect, trade, and own a piece of history, in a marketplace that's truly divine.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(182, 184, 182, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(055, 154, 211, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
