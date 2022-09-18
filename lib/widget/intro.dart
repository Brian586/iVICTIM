import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'dart:math';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        bool isMobile = sizeInfo.isMobile;
        return Stack(
          children: [
            Image.asset(
              "assets/6.jpg",
              height: size.height,
              width: size.width,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black38,
              ),
            ),
            Positioned.fill(
              child: Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.transparent])),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's \nMake It A Story ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RichText(
                      textScaleFactor: 3.0,
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Digital Fraud &',
                            style: isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .apply(color: Colors.white)
                                : Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .apply(color: Colors.white),
                          ),
                          TextSpan(
                            text: '\n Cyber Bullying ',
                            style: isMobile
                                ? Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .apply(
                                      color: Colors
                                          .yellow, /*decoration: TextDecoration.underline*/
                                    )
                                : Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .apply(
                                      color: Colors
                                          .yellow, /*decoration: TextDecoration.underline*/
                                    ),
                          ),
                        ],
                      ),
                    ),
                    //const SizedBox(height: 20.0,),
                    Text(
                      "\nStand Out Strong \nBy Sharing & Watching Other People's Stories! ",
                      textAlign: TextAlign.center,
                      style: isMobile
                          ? Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Colors.white)
                          : Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Find Us On YouTube!",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: Colors.yellow),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                      onPressed: () async {
                        try {
                          await launch(
                              "https://www.youtube.com/channel/UCAmav7wCpJOhdFZlNdF6Tuw/videos");
                        } catch (exp) {
                          print(exp.toString());
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //Image.asset("assets/youtube.png", height: 30.0, width: 40.0, fit: BoxFit.contain,),
                            Text(
                              "YouTube",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
