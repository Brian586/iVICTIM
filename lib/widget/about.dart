import 'package:flutter/material.dart';
import 'package:ivictim/widget/customVideoWidget.dart';
import 'package:ivictim/widget/learnMore.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AboutMobile(),
      tablet: (BuildContext context) => const AboutMobile(),
      desktop: (BuildContext context) => const AboutDesktop(),
      watch: (BuildContext context) => Container(color: Colors.white),
    );
  }
}

class AboutDescription extends StatelessWidget {
  const AboutDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SizedBox(
        height: size.height * 0.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ABOUT US",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .apply(color: Colors.red),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "iVictim is an online platform focusing on informing and educating the public on the rising cases of internet fraud, cyber bullying and creating a safe space for internet users. "
              "Our vision is to make the public be aware of online safety and easily access information on matters cybersecurity. "
              "Creating an online space that is led by the principles of online safety requires all of us to step up: to both practice online safety and to challenge bad and harmful behaviors online.",
              textAlign: TextAlign.center,
              //style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [SizedBox(), LearnMore()],
            )
          ],
        ),
      ),
    );
  }
}

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/icons/back_phone.png"),
        fit: BoxFit.contain,
      )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AboutDescription(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const CustomVideoWidget(
              videoId: "sTSCLCvYifc",
            ),
          ),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.7,
      width: size.width,
      child: Stack(
        children: [
          Image.asset("assets/icons/background.png",
              height: size.height * 0.7,
              width: size.width,
              fit: BoxFit.contain),
          Positioned(
            bottom: 10.0,
            right: size.width * 0.05,
            child: Image.asset("assets/clip2.png",
                height: size.height * 0.3,
                //width: size.width,
                fit: BoxFit.contain),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(flex: 1, child: AboutDescription()),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: const CustomVideoWidget(
                        videoId: "sTSCLCvYifc",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
