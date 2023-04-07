import 'package:flutter/material.dart';

import 'screen2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragUpdate: (details) {},
        onHorizontalDragUpdate: (details) {
          if (details.delta.direction > 0) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Onboarding2()));
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 340,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 236, 229, 1),
                      image: DecorationImage(
                          image: AssetImage('assets/images/NFTjoy1.png')),
                    )),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "Centralise all your NFTs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Connect your wallet to discover native support for all Ethereum, Polygon, Solana, and BSC NFTs.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(182, 184, 182, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Text(
                    "Swipe left to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
