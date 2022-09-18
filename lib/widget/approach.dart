import 'package:flutter/material.dart';
import 'package:ivictim/widget/learnMore.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Approach extends StatelessWidget {
  const Approach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ApproachMobile(),
      tablet: (BuildContext context) => const ApproachMobile(),
      desktop: (BuildContext context) => const ApproachDesktop(),
      watch: (BuildContext context) => Container(color: Colors.white),
    );
  }
}

class ApproachMobile extends StatelessWidget {
  const ApproachMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: 500.0,
        ),
        Positioned(
          top: 0.0,
          bottom: 0.0,
          left: 0.0,
          child: Image.asset("assets/4.jpg",
              height: 500.0, width: size.width * 0.7, fit: BoxFit.cover),
        ),
        Positioned(
          top: 50.0,
          bottom: 50.0,
          right: 20.0,
          child: Container(
            width: size.width * 0.8,
            //height: 400.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 6.0, blurRadius: 6.0)
                ],
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OUR APPROACH \n3D ANIMATION",
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .apply(color: Colors.red),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Our 3D animation experts will create visuals to explain in clear and simple language why an individual needs to safeguard his/her privacy and maintain internet safety standards.The dangers or risks associated with unsecured internet access would lead to online abuse, internet fraud, threats or even impersonation. The visuals will create understanding of the associated ",
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(),
                      LearnMore(),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ApproachDesktop extends StatelessWidget {
  const ApproachDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Image.asset("assets/icons/background.png",
            height: size.height * 0.7, width: size.width, fit: BoxFit.contain),
        Positioned(
          bottom: 10.0,
          left: size.width * 0.05,
          child: Image.asset("assets/clip1.png",
              height: size.height * 0.3,
              //width: size.width,
              fit: BoxFit.contain),
        ),
        Positioned.fill(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "OUR APPROACH \n3D ANIMATION",
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .apply(color: Colors.red),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "Our 3D animation experts will create visuals to explain in clear and simple language why an individual needs to safeguard his/her privacy and maintain internet safety standards.The dangers or risks associated with unsecured internet access would lead to online abuse, internet fraud, threats or even impersonation. The visuals will create understanding of the associated ",
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(),
                          LearnMore(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset("assets/4.jpg",
                    height: size.height * 0.7,
                    //width: size.width,
                    fit: BoxFit.cover),
              ),
            ],
          ),
        )
      ],
    );
  }
}
